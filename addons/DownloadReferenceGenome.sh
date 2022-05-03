#!/bin/bash

chroms=(
	"I"
	"II"
	"III"
	"IV"
	"V"
	"VI"
	"VII"
	"VIII"
	"IX"
	"X"
	"XI"
	"XII"
	"XIII"
	"XIV"
	"XV"
	"XVI"
	"Mito")


for chromosome in "${chroms[@]}"
do
	wget \
	http://ftp.ensembl.org/pub/release-106/fasta/saccharomyces_cerevisiae/dna/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome."${chromosome}".fa.gz

done

mv *.gz "../reference_genome/"