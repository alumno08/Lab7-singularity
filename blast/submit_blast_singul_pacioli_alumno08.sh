#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno08/lab-7
#SBATCH -J singularity
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END    #END/START/NONE
#SBATCH --mail-user=soledad.arias@um.es

module load singularity/3.8.0

echo "APARTADO 1"

gzip -d zebrafish.1.protein.faa.gz

echo "APARTADO 2"

singularity run blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot


singularity run blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt


module unload singularity/3.8.0

