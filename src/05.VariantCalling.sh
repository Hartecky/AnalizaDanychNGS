#!/bin/bash

# ----------------------------------------
# PROJECT NAMES

PROJECTS=(
	"SRR064547"
	"SRR064546"
	"SRR064545"
	)

# ----------------------------------------
# NAMES

REFERENCEGENOME="../reference_genome/Saccharomyces.reference.genome.fa.gz"



for SAMPLE in "${PROJECTS[@]}"
do
	# Running mpileup
	bcftools mpileup -O b -f "$REFERENCEGENOME" "../alignment/${SAMPLE}.sorted.bam" -o "${SAMPLE}_raw.bcf"

	# Running SNP call
	bcftools call --ploidy 1 -m -v -o "${SAMPLE}_variants.vcf" "${SAMPLE}_raw.bcf"
	
done