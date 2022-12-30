#!/bin/bash

echo "hostname:"
echo "IBSEN"
hostname
echo "SINGULARITY"
singularity exec /home/alumno08/lab7-singularity/Lab7-singularity/singularity/my-python.sif  hostname



echo "cat /etc/os-release:"
echo "IBSEN"
cat /etc/os-release
echo "SINGULARITY"
singularity exec /home/alumno08/lab7-singularity/Lab7-singularity/singularity/my-python.sif cat /etc/os-release



echo "pwd:"
echo "IBSEN"
pwd
echo "SINGULARITY"
singularity exec /home/alumno08/lab7-singularity/Lab7-singularity/singularity/my-python.sif  pwd


echo "ls -l /home:"
echo "IBSEN"
ls -l /home
echo "SINGULARITY"
singularity exec /home/alumno08/lab7-singularity/Lab7-singularity/singularity/my-python.sif ls -l /home


echo "python –version:"
echo "IBSEN"
python --version
echo "SINGULARITY"
singularity exec /home/alumno08/lab7-singularity/Lab7-singularity/singularity/my-python.sif python --version


echo "Ejecutar Kmer-solution:"
echo "IBSEN"
ipython /home/alumno08/lab7-singularity/Lab7-singularity/source/kmer-solution.ipynb
echo "SINGULARITY"
singularity exec /home/alumno08/lab7-singularity/Lab7-singularity/singularity/my-python.sif  ipython /home/kmer-solution.ipynb

