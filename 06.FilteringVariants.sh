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

# Running mpileup

for SAMPLE in "${PROJECTS[@]}"
do

	vcfutils.pl varFilter "../vcfs/${SAMPLE}_variants.vcf" > "${SAMPLE}.final.vcf"

done