# ------------------------------------------------------------------------------
# NGS Course project
# Variant comparison by visualization
# Bart³omiej Hofman

# ------------------------------------------------------------------------------
# Loading libraries and setting env

library(ggplot2)
library(gridExtra)
library(purrr)

PATH <- getwd()
setwd(PATH)

# ------------------------------------------------------------------------------
# Reading data from VEP output

SRR064545.vep <- read.table("final_data/vep_output/SRR064545.vep.txt", 
                        header = TRUE, 
                        sep = "\t")

SRR064545.vep$Chrom <- unlist(map(strsplit(SRR064545.vep$Uploaded_variation, "_"), 1))

SRR064546.vep <- read.table("final_data/vep_output/SRR064546.vep.txt", 
                        header = TRUE, 
                        sep = "\t")

SRR064546.vep$Chrom <- unlist(map(strsplit(SRR064546.vep$Uploaded_variation, "_"), 1))

SRR064547.vep <- read.table("final_data/vep_output/SRR064547.vep.txt", 
                        header = TRUE, 
                        sep = "\t")

SRR064547.vep$Chrom <- unlist(map(strsplit(SRR064547.vep$Uploaded_variation, "_"), 1))

# ------------------------------------------------------------------------------
# Plotting data

# P - Plot annotated variants for each sample by chromosome

p1 <- ggplot(SRR064545.vep, aes(x = Chrom)) + geom_bar(stat = 'count')

p2 <- ggplot(SRR064546.vep, aes(x = Chrom)) + geom_bar(stat = 'count')

p3 <- ggplot(SRR064547.vep, aes(x = Chrom)) + geom_bar(stat = 'count')

grid.arrange(p1, p2, p3, ncol = 3)

# Q - Plot annotated consequences

q1 <- ggplot(SRR064545.vep, aes(x = Chrom, fill = Consequence)) + geom_bar(stat = 'count')

q1
