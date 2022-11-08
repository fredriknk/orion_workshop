#!/bin/bash
#SBATCH --ntasks=1               # 1 core(CPU)
#SBATCH --nodes=1                # Use 1 node
#SBATCH --job-name=my_job_name   # sensible name for the job
#SBATCH --mem=1G                 # Default memory per CPU is 3GB.
#SBATCH --partition=smallmem     # Use the smallmem-partition for jobs requiring < 10 GB RAM.
#SBATCH --mail-user=myemail@nmbu.no # Email me when job is done.
#SBATCH --mail-type=ALL

# If you would like to use more please adjust this.

## Below you can put your scripts
# If you want to load module
module purge                # Clean all modules
module load samtools  # Load the Samtools software
module list                 # List loaded modules


# Other commands can also be included.
echo "This is my example script. Hello world!"