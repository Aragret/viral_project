#!/bin/bash

# script will take 2 parameters: name of a directory with neccesary files
# and ani or aai

if [[ $2 == "ani" ]]
then cd $1/nucleotide/
else cd $1/protein/
fi

for first_file in *:
do
  for second_file in *:
  do
    if [[ first_file != second ]]
    then . /home/aragret/Alina/other_projects/lyosha/enveomics/Scripts/$2.rb -1 first_file -2 second_file -T
    fi
  done
done
