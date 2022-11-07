# Orion course

## Storage
####  $Home
Scripts and programs, no research data
200-300G
#### $Orion
Install files
#### $ LABFILES
RAW DATA <=4 yrs


## USAGE
### THe Module scheme
qlogin -p COURSE -w cn-1

```
module list # List all modules
module load XXX #Loads a module

``` 
### Installing conda software
### Using singularity containers


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