# Orion course



## USAGE
### THe Module scheme:
qlogin -p COURSE -w cn-1

```
module list # List all modules
module load XXX #Loads a module

``` 
### Installing conda software:
see [conda.sh](workshop_scripts_2022_11_07/biocon.sh)

### Using singularity containers:
Singularity scripts for reusability

The /cvmfs/singularity.galaxyproject.org/ contais a lot of ready made containers an the format eg ./M/U/musclexxxx

copy the singularity folder to your user 

### DOCKER through Singularity:
We cant use docker directly, but we can pull docker containers and build singularity files

so to pull a library we simply change the command

````commandline
$docker pull ecogenomic/gtdbtk:2.1.1

# is changed to

$singularity pull docker://ecogenomic/gtdbtk:2.1.1

# To run it use:

$singularity exec --bind /mnt/databases/GTBTK/realease207_v2/:/refdata/ gtdbk_2.1.1.sif gtdbtk -h
````

### Sending files:

You should use filemanager.orion.nmbu.no to transfer files.

## Storage
####  $Home
Scripts and programs, no research data
200-300G
#### $Orion
Install files
#### $ LABFILES
RAW DATA <=4 yrs



## Nice to know
### Variables
save variable as MYVARIABLE="test" or MYDIR="/home/fnk/test.dir" Access by using $VARIABLENAME 

Numerical variables can be NUMVAR=1 Numerical arithmatic $(($NUMVAR+1))
- You can make variable bash scripts to set enviroment variables

$PS1 is the startup variable [\u@\h \W]\$ shows which

you can combine variables in strings eg echo "This is $USER my home is $HOME and my computer name is $HOSTNAME"

### Piping
You can pipe commands into other  eg ls -1 | wc -l to count number of files in a folder

### For loops
#### Count to ten
for var in 0 1 2 3 4 5 6 7 8 9; do echo$var ;done
#### List all files with .bash* prefix
for FILE in $HOME/.bash*;do echo $FILE;done