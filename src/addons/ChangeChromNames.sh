 #!/bin/bash

# ----------------------------------------
# NAMES

GENOME="Saccharomyces_cerevisiae.genome.fa.gz"
INDEX="index.txt"

NONMITGENOME="Sacharomyces.nonmit.genome.fa.gz"
REFERENCEGENOME="Saccharomyces.reference.genome.fa.gz"

zgrep ">" "$GENOME" | grep -v "Mito" | tr -d ">" >> "$INDEX"

seqtk "$GENOME" "$INDEX" >> "$NONMITGENOME"

awk '$0 ~ ">" {print $1} $0 !~ ">" {print}' "$NONMITGENOME" >> "$REFERENCEGENOME"

rm "$NONMITGENOME" 

 