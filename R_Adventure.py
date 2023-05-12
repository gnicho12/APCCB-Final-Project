#!/usr/local/bin/python3

import sys
import os
from Bio import SeqIO
from Bio import Entrez
import subprocess


#Accepts the input value
#input value is list of "program name", "Passed value"
#term is the "Passed value"
in_val = sys.argv
term = in_val[1]

#Using my email to access NCBI Entrez
Entrez.email = "gnicho12@jh.edu"


#This should access the nucleotide db, fetch uing the variable as an id,
#and then output to a fasta format
#Rover is a common dog's name
rover = Entrez.efetch(
        db="nucleotide", id=term, rettype="fasta", retmode="text")

#output is written to a file
record = SeqIO.read(rover,'fasta')
output_file = '/var/www/html/gnicho12/R_project/R_sequence.fasta'
SeqIO.write(record,output_file,'fasta')

#assigns res to call the Rscript located at this path
#Calls the Rscript
eagle = subprocess.call("Rscript /var/www/html/gnicho12/R_project/R_Adventure.R", shell=True)
eagle
