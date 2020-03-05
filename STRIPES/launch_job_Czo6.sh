#!/bin/bash

#PBS -N CzSTRIPE_job_Czo6
#PBS -k o
#PBS -l nodes=1:ppn=16,vmem=64gb
#PBS -l walltime=8:00:00

myDir=/N/dc2/scratch/rtraborn/STRIPEseq_files/GoSTRIPES_Czo/STRIPES
sampleFolder=Czo6

module load singularity

source /N/dc2/scratch/rtraborn/myDevel/GoSTRIPES/bin/xworkStripes -b /N/dc2/scratch/rtraborn/STRIPEseq_files/GoSTRIPES_Czo/STRIPES -i /N/dc2/scratch/rtraborn/STRIPEseq_files/GoSTRIPES_Czo/STRIPES/gostripes.simg

echo "Launching job"

cd $myDir

cd $sampleFolder

$rws make -n

$rws make

echo "Job complete"
