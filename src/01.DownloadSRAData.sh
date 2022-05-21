#!/bin/bash

# ----------------------------------------
# PROJECT NAMES

PROJECTS=(
	"SRR064547"
	"SRR064546"
	"SRR064545"
	)


# ----------------------------------------
# DOWNLOAD FILES

for EXPERIMENT in "${PROJECTS[@]}"
do
	echo "Downloading 1000000 paired-end reads from $EXPERIMENT"

	fastq-dump \ 
	-X 1000000 \ 
	"$EXPERIMENT" \
	--split-3 \
	--gzip

done