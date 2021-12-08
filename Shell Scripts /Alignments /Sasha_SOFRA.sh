#!/bin/bash

#SBATCH -J Sasha_OO_
#SBATCH -o /gpfs/home/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/Sasha_Output_Files/Scratch/outfile_%j.out
#SBATCH -e /gpfs/home/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/Sasha_Output_Files/Scratch/error_%j.out
#SBATCH --time=16:00:00
#SBATCH --mem=30G
#SBATCH --nodes=4

workingDir="/gpfs/home/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/"

expcond="SOFRA"

files=$workingDir"SO_Raw_Reads_For_Alignment/"$expcond"*.fq.gz"

##create star directories
starDir=$workingDir$expcond"_STAR"

mkdir $starDir
mkdir $starDir"/Count_Index"
mkdir $starDir"/first_pass"
mkdir $starDir"/second_pass"
mkdir $starDir"/second_index"


##loop over experimental condition files
for file in $files
do
	##parse sample name
        echo $file
        sample=$(basename "$file" .fq.gz)
        echo $sample

	zcat $workingDir"SO_Raw_Reads_For_Alignment/"$sample".fq.gz" | echo $((`wc -l`/4))

	gzip -d $workingDir"SO_Raw_Reads_For_Alignment/"$sample".fq.gz"

	cd $starDir"/first_pass"

	module load star/2.7.3a

	STAR --genomeDir $workingDir"BDGP6.32" --readFilesIn $workingDir"SO_Raw_Reads_For_Alignment/"$sample".fq" --runThreadN 20

	STAR --runMode genomeGenerate --genomeDir $starDir"/second_index" --genomeFastaFiles $workingDir"Drosophila_melanogaster.BDGP6.32/"* --sjdbFileChrStartEnd $starDir"/first_pass/SJ.out.tab" --sjdbOverhang 49 --runThreadN 20 --genomeSAindexNbases 12

	cd $starDir"/second_pass"

	STAR --genomeDir $starDir"/second_index" --readFilesIn  $workingDir"SO_Raw_Reads_For_Alignment/"$sample".fq" --runThreadN 20 --outSAMtype BAM SortedByCoordinate --outFileNamePrefix $workingDir"Sasha_Output_Files/BAM/"$sample

	module load samtools/1.3.1

	samtools index $workingDir"Sasha_Output_Files/BAM/"$sample"Aligned.sortedByCoord.out.bam"

	module load python/3.7.4

	module load htseq/0.11.1

	htseq-count $workingDir"Sasha_Output_Files/BAM/"$sample"Aligned.sortedByCoord.out.bam" $workingDir"BDGP6.32/Drosophila_melanogaster.BDGP6.32.104.gtf" -t exon -s no -r pos -i gene_id -f bam > /$workingDir"Sasha_Output_Files/Count_Tables/"$sample"_CountTable.txt"

	gzip $workingDir"SO_Raw_Reads_For_Alignment/"$sample".fq"

done
