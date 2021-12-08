#!/bin/bash

#SBATCH -J GenomeGenerationBDGP6.32
#SBATCH -o /gpfs/home/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/BDGP6.32/outfile_%j.out
#SBATCH -e /gpfs/home/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/BDGP6.32/error_%j.out

#Submit cmd: sbatch -n 4 -t 16:00:00 --mem=16G GenomeGeneration.sh

module load star/2.7.3a

STAR --runMode genomeGenerate --genomeDir "/gpfs/home/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/BDGP6.32" --genomeFastaFiles "/gpfs/home/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/Drosophila_melanogaster.BDGP6.32/Drosophila_melanogaster.BDGP6.32.dna."* --sjdbGTFfile "/gpfs/home/jcsantia/data/jcsantia/RapaTissueRNAseq_Files/BDGP6.32/Drosophila_melanogaster.BDGP6.32.104.gtf" --sjdbOverhang 49 --genomeSAindexNbases 12
