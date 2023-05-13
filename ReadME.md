# The R Adventure w/ Seqinr 

## This program will accept an NCBI accession ID, retrieve the FASTA, and run statistics using the Seqinr package in R. 

  This was started as an end-of-the-semester project for class contributing to my Masters in Biotech/Bioinformatics with a goal of showcasing the use of the Seqinr package in R.  Using the command line, you will supply an NCBI accession ID for a nucleotide sequence as an argument to the R_Adventure.py file.  It will search the NCBI databases, retrieve the FASTA file, and save it into the same directory.  From there, a subprocess is used to call the RScript, R_Adventure.R, which runs analytics on the sequence and produces 2 graphs.  A graph for the composition of the bases in the sequence and another for the GC percentage. The RScript also Stdout link to the html file, R_Adventure.html, where the graphs are displayed.  R_Adventure.css is used for styling the html file. 

## Workflow 
 

* R_Adventure.py accepts an NCBI accesion ID Argument 
* R_Adventure.py retrieves a FASTA file and saves in on the directory 
* R_Adventure.py calls the R_Adventure.R Rscript 
* R_Adventure.R analyses the FASTA File, prints out statistics, makes 2 graphs, and prints out a url to the graphs. 
* R_Adventure.html displays the graphs 
* R_Adventure.css is used for stying the html file 

## Installation 

The files themselves can be copied from this Github repository 

Additionally, 2 more packages are needed. 

In the terminal environment, BioPython is needed.  To download, you can use the example below, but more detailed info can be found on their website: https://biopython.org/wiki/Download 


```bash 
pip install biopython 
``` 

Additionally, the Seqinr package will need to be downloaded into R.   

``` 
install.packages("seqinr", repos="http://R-Forge.R-project.org") 
``` 

## Usage 

Execute the R_Adventure.py file and supply an NCBI accession ID as an argument 

```python 
./R_Adventure.py NC_059116.1  
``` 

From there, the program will provide the user with retrieve the FASTA file, report statistics, and provide a url link to view the graphs. 

## Contributing 

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change. 

Please make sure to update tests as appropriate.
