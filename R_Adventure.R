#!/usr/bin/env Rscript

#uploads the sequin library, so it can be used
library(seqinr)

#Set up working directory of where to find file
setwd("/var/www/html/gnicho12/R_project")

#Reading the fasta file, setting the sequence typto to nucleotides,
#and ensuring all info is lowercase
dna= read.fasta(file ="R_sequence.fasta", seqtype = "DNA", forceDNAtolower =  TRUE)


#Names of the sequence in the Fasta file
seq_name = getName(dna)

#Annotation data of the sequences in the Fasta file
#Gives the names as well as annotation data
seq_ann = getAnnot(dna)

#Lengths of the sequences
seq_length = getLength(dna)

#Prints out statitics
print(paste("The", seq_name, "accession ID matched with the", seq_ann, "sequence."))
print(paste("This fasta sequence is", seq_length, "nucleotides long."))


#the percentage of GC's in the sequence
#Set the percentage to 2 decimal places
seq_gc = GC(dna[[1]])
gc2 = round(seq_gc, digits = 2)


#Vector for GC's
#Vector for label
#Makes a pie chart for the GC percentages
#Adds a legend
#Saves it to a separate file
notgc2 = (1 - gc2)
x = c(gc2, notgc2)
y = c("GC percentage", "Other")
png("img/GC_chart.png")
pie(x, label = x, main = "GC Content %", col = rainbow(length(x)))
legend("topright", y, fill = rainbow(length(x)))




#composition of the sequences
seq_count = count(dna[[1]],1)

#Makes a Barplot of the bases and saves it to a separate file
png("img/Bases_chart.png")
barplot(seq_count, main = seq_name, xlab = "Bases Composition", ylab = "Count")


#Prints the graphs' location
print("The graphs showing the base composition and GC content can be found at: http://bfx3.aap.jhu.edu/gnicho12/R_project/R_Adventure.html")
