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

SORTED=".sorted.bam"
FLAGSTAT=".flagstat_logs.txt"
STAT=".stat_logs.txt"

for SAMPLE in "${PROJECTS[@]}"
do
	
	samtools sort -@ 8 "${SAMPLE}.bam" -o "${SAMPLE}$SORTED"

	samtools index -@ 8 "${SAMPLE}$SORTED"

	samtools flagstat -@ 8 "${SAMPLE}$SORTED" >> "${SAMPLE}$FLAGSTAT"

	samtools stat -@ 8 "${SAMPLE}$SORTED" >> "${SAMPLE}$STAT"

done