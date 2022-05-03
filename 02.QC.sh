#!/bin/bash

# ----------------------------------------
# PROJECT NAMES

PROJECTS=(
	"SRR064547"
	"SRR064546"
	"SRR064545"
	)

# ----------------------------------------
# READS NUMBERS

FORWARD="_1.fastq.gz"
REVERSE="_2.fastq.gz"
HTML="qc_fastp.html"
# ----------------------------------------
# FASTP QUALITY CONTROL AND TRIMMING

for SAMPLE in "${PROJECTS[@]}"
do
	fastp \
	-i "raw_data/${SAMPLE}$FORWARD" \
	-I "raw_data/${SAMPLE}$REVERSE" \
	-o "qc_data/${SAMPLE}$FORWARD" \
	-O "qc_data/${SAMPLE}$REVERSE" \
	--html "qc_data/${SAMPLE}$HTML"

done

