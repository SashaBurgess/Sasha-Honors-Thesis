#!/bin/bash

#SBATCH -J OOMCA2
#SBATCH -o /gpfs/home/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/Sasha_Output_Files/Scratch/outfile_%j.out
#SBATCH -e /gpfs/home/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/Sasha_Output_Files/Scratch/error_%j.out

workingDir="/gpfs/home/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/"
sample="OOMCA2"

zcat $workingDir"Raw_Reads_For_Alignment/"$sample"_1.fq.gz" | echo $((`wc -l`/4))

gzip -d $workingDir"Raw_Reads_For_Alignment/"$sample"_1.fq.gz"

cd $workingDir"star/first_pass"

module load star/2.6.1b

STAR --genomeDir $workingDir"BDGP6.32" --readFilesIn $workingDir"Raw_Reads_For_Alignment/"$sample"_1.fq" --runThreadN 20
