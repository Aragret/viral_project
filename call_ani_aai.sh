#!/bin/bash

# script will take 2 parameters: name of a directory with neccesary files
# and ani or aai

if [[ $2 == "ani" ]];
then cd $1/nucleotide/;
else cd $1/protein/;
fi

touch ../../outputs/temp_file
truncate -s 0 ../../outputs/temp_file

for first_file in *;
do
  for second_file in *;
  do
    if [[ first_file != second ]];
    then ruby /home/aragret/Alina/other_projects/viral_project/enveomics/Scripts/$2.rb --sqlite3 ../../outputs/database.db  --no-save-regions --no-save-rbm -1 $first_file -2 $second_file | tee -a ../../outputs/temp_file;
    fi;
  done;
done;
