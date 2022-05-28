# NGS Data Analysis - Project

## Structure of the repository

- src directory contains all scripts used for data analysis. It includes:
	- Downloading data from SRA using fastq-dump
	- Quality Control using fastp
	- Alignment to the reference genome using BWA
	- Post-alignment processes using samtools
	- Variant calling using samtools and bcf tools
	- Filtering Variants using perl script provided by bcftools

	There is also subdirectory addons, which contains:
		- script for changing chromosome names in contigs
		- script for downloading reference genome
		- script for merging reference genome

- data directory contains all the data that was used and processed during the analysis. Includes:
 	- raw data in FASTQC format
 	- cleaned data in FASTQC format
 	- Referece genome with contigs and indexes
 	- Aligned reads to the genome in BAM format

- vcfs directory contains raw variants data obtained after variant calling step

- final_data directory contains data in VCF format obtained in the last stage of the analysis after the variant calling and filtering variants. It also contains prepared input data for VEP (Variant Effect Predictor) tool, and also output data from VEP.

- logs directory contains messages and outputs from softwares

## Tree of the directory structure

```{bash}

```