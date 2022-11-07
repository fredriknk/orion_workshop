#!/bin/bash

COURSEPATH="$COURSES/Orion101-2022/software/query.fasta"
SEARCHDATABASE="/mnt/databases/coursedb/dbase"

module load BLAST+

blastp -query $COURSEPATH -db $SEARCHDATABASE -outfmt 6 > ./blastres.txt