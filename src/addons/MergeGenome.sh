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


for chrom in "${chroms[@]}"
do
	zcat "../reference_genome/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome."${chrom}".fa.gz" >> "../reference_genome/Saccharomyces_cerevisiae.genome.fa.gz"
done