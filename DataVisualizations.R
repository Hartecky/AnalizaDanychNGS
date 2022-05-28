# ------------------------------------------------------------------------------
# NGS Course project
# Variant comparison by visualization
# Bart³omiej Hofman

# ------------------------------------------------------------------------------
# Loading libraries and setting env

library(ggplot2)
library(gridExtra)
library(purrr)
library(vcfR)
library(ape)

PATH <- getwd()
setwd(PATH)

# ------------------------------------------------------------------------------
# Reading VCF data

VCF.45 <- read.vcfR("final_data/SRR064545.final.vcf")
VCF.46 <- read.vcfR("final_data/SRR064546.final.vcf")
VCF.47 <- read.vcfR("final_data/SRR064547.final.vcf")

REFERENCE.GENOME <- read.dna("data/reference_genome/Saccharomyces.reference.genome.fa.gz", format = "fasta")

REFERENCE.ANNOT <- read.gff("data/reference_genome/Saccharomyces_cerevisiae.R64-1-1.106.gff3", na.strings = c(".", "?"), GFF3 = TRUE)


# ------------------------------------------------------------------------------
# For each sample create vcfR chrom object

make.chrom.obj <- function(vcf.object, name, ref.genome, ref.annot){
  chrom <- create.chromR(vcf = vcf.object, 
                         name = name, 
                         seq = ref.genome, 
                         ann = ref.annot)
  
  return(chrom)
}

SAMPLE.45 <- make.chrom.obj(vcf.object = VCF.45,
                            name = "SAMPLE 45",
                            ref.genome = REFERENCE.GENOME,
                            ref.annot = REFERENCE.ANNOT)

SAMPLE.46 <- make.chrom.obj(vcf.object = VCF.46,
                            name = "SAMPLE 47",
                            ref.genome = REFERENCE.GENOME,
                            ref.annot = REFERENCE.ANNOT)

SAMPLE.47 <- make.chrom.obj(vcf.object = VCF.47,
                            name = "SAMPLE 47",
                            ref.genome = REFERENCE.GENOME,
                            ref.annot = REFERENCE.ANNOT)

# ------------------------------------------------------------------------------
# Visualize results

plot(SAMPLE.45)
chromoqc(SAMPLE.45)

plot(SAMPLE.46)
chromoqc(SAMPLE.46)

plot(SAMPLE.47)
chromoqc(SAMPLE.47)


