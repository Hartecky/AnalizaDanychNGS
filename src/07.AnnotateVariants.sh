#!/bin/bash

# ----------------------------------------
# PROJECT NAMES

PROJECTS=(
	"SRR064547"
	"SRR064546"
	"SRR064545"
	)
HTML_REPORT="snpEff_summary.html"
GENES="snpEff_genes.txt"

# ----------------------------------------
# NAMES

# Running mpileup

for SAMPLE in "${PROJECTS[@]}"
do

	java -Xmx8G -jar ~/snpEff/snpEff.jar eff R64-1-1.105 "../final_data/${SAMPLE}.final.vcf" > "${SAMPLE}.annotated.vcf"

	mv "$HTML_REPORT" "${SAMPLE}_REPORT.html"

	mv "$GENES" "${SAMPLE}_GENES.txt"
done