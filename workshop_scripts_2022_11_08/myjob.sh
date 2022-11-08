#!/bin/bash

## Job name:
## Job name:
#SBATCH --job-name=MySecondSbatchScript  #Name of the job
#
## Wall time limit:
#SBATCH --time=00:10:00  #Run for 10 minutes
#
####Partition
#SBATCH --partition=COURSE-CPU  #Partiion submitting the job
## Other parameters:
#SBATCH --cpus-per-task 2    #Number of cpus the job will use
#SBATCH --mem=1G             #Memory RAM
#SBATCH --nodes 1
#SBATCH --mail-user=arturo.vera.ponce.de.leon@nmbu.no  #User email
#SBATCH --mail-type=begin      #notify by email when job starts
#SBATCH --mail-type=end        #notify by email when job ends
#SBATCH -o slurm-%x_%j.out    #Standar output message
#SBATCH -e slurm-%x_%j.err    #Standar error message

######Everything below this are the job instructions######

echo "Hello $USER this is my first JOB"
echo "I am running on the NODE $SLURM_NODELIST"
echo "I am running with $SLURM_CPUS_ON_NODE cpus"

echo "Starting $SLURM_JOB_ID at"
date

sleep 10 && echo "I slept for 10 seconds" > 10.txt
sleep 20 && echo "I slept for 20 seconds" > 20.txt
sleep 60 && echo "I slept for 1 min" > onemin.txt

echo "Ending $SLURM_JOB_ID at"
date