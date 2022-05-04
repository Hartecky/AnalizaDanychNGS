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

FORWARD="_1.fastq.gz"
REVERSE="_2.fastq.gz"

REFERENCEGENOME="Saccharomyces.reference.genome.fa.gz"

bwa index "$REFERENCEGENOME"

for SAMPLE in "${PROJECTS[@]}"
do

	bwa mem \
	-t 4 \
	 "$REFERENCEGENOME" \
	 "../qc_data/${SAMPLE}$FORWARD" \
	 "../qc_data/${SAMPLE}$REVERSE" | \
	 samtools view -@ 4 \
	 -Sb > "../alignment/${SAMPLE}.bam"

done
