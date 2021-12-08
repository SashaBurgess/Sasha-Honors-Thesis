#!/bin/bash

#SBATCH -J SOMRT3
#SBATCH -o /users/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/Sasha_Output_Files/Scratch/outfile_%j.out
#SBATCH -e /users/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/Sasha_Output_Files/Scratch/error_%j.out

workingDir="/gpfs/home/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/"
sample="SOMRT3"

zcat $workingDir"Raw_Reads_For_Alignment/"$sample"_1.fq.gz" | echo $((`wc -l`/4))

module load fastqc/0.11.5

fastqc $workingDir"Raw_Reads_For_Alignment/"$sample"_1.fq.gz" -o $workingDir"Sasha_Output_Files/FastQC/" -t 16

gzip -d $workingDir"Raw_Reads_For_Alignment/"$sample"_1.fq.gz"

cd $workingDir"star/first_pass"

module load star/2.6.1b

STAR --genomeDir $workingDir"BDGP6.32" --readFilesIn $workingDir"Raw_Reads_For_Alignment/"$sample"_1.fq" --runThreadN 20

STAR --runMode genomeGenerate --genomeDir $workingDir"star/second_index" --genomeFastaFiles $workingDir"Drosophila_melanogaster.BDGP6.32/"* --sjdbFileChrStartEnd $workingDir"star/first_pass/SJ.out.tab" --sjdbOverhang 49 --runThreadN 20

cd $workingDir"star/second_pass"

STAR --genomeDir $workingDir"star/second_index" --readFilesIn  $workingDir"Raw_Reads_For_Alignment/"$sample"_1.fq" --runThreadN 20 --outSAMtype BAM SortedByCoordinate --outFileNamePrefix $workingDir"Sasha_Output_Files/BAM/"$sample

module load samtools/1.3.1

samtools index $workingDir"Sasha_Output_Files/BAM/"$sample"Aligned.sortedByCoord.out.bam"

module load python/3.7.4

module load htseq/0.11.1

htseq-count $workingDir"Sasha_Output_Files/BAM/"$sample"Aligned.sortedByCoord.out.bam" $workingDir"BDGP6.32/Drosophila_melanogaster.BDGP6.32.104.gtf" -t exon -s no -r pos -i gene_id -f bam > /$workingDir"Sasha_Output_Files/Count_Tables/"$sample"_CountTable.txt"

gzip $workingDir"Raw_Reads_For_Alignment/"$sample"_1.fq"
