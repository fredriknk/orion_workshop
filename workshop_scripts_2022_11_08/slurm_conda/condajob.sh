!/bin/bash

## Job name:
#SBATCH --job-name=BlastCONDA  #Name of the job
## Wall time limit:
#SBATCH --time=00:10:00  #Run for 10 minutes
####Partition
#SBATCH --partition=COURSE-CPU  #Partiion submitting the job
## Other parameters:
#SBATCH --cpus-per-task 4    #Number of cpus the job will use
#SBATCH --mem=1G             #Memory RAM
#SBATCH --nodes 1
#SBATCH --mail-user=arturo.vera.ponce.de.leon@nmbu.no  #User email
#SBATCH -o slurm-%x_%j.out    #Standar output message
#SBATCH -e slurm-%x_%j.err    #Standar error message

######Everything below this are the job instructions######

echo "Hello $USER this is my first JOB"
echo "I am running on the NODE $SLURM_NODELIST"
echo "I am running with $SLURM_CPUS_ON_NODE"
echo "This is the JOB $SLURM_JOB_ID"

##Purge modules

module purge

#Load conda module

module load Miniconda3

##Prpare the environment for conda activation in the computing node:

#eval "$(conda shell.bash hook)"

##Load a conda environment that has blaston it
conda activate $COURSES/Orion101-2022/SLURM/condaenv/BLAST
echo "I am working with the conda env: "$CONDA_PREFIX

##Some variables

QUERY="$COURSES/Orion101-2022/SLURM/SBATCH/amylase.Bgramini.fasta"
DB="$COURSES/Orion101-2022/SLURM/SBATCH/Bacteroides.blastp.db"

##Run blastp

echo "Starting blastp at"
date +%d\ %b\ %T

blastp \
-query $QUERY \
-db $DB \
-dbsize 1000000000 \
-max_target_seqs 1 \
-outfmt 6 \
-num_threads $SLURM_CPUS_ON_NODE \
-out blastp.using.conda.tsv

echo "I've finished blast at"
date +%d\ %b\ %T