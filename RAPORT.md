```flow

st=>start: Quality Control (Fastp)
op=>operation: Data Cleaning (Fastp)
op=>operation: Alignment to the reference genome (BWA)
op=>operation: Post-alignment processes (samtools)
op=>operation: Variant calling (samtools & bcftools)
op=>operation: Variant Filtering (bcftools)
op=>operation: Functional Annotation (Variant Effect Predictor)
op=>operation: Data visualization (R + ggplot2)

```