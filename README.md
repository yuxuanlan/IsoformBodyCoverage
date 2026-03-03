# TranscriptBodyCoverage

## Overview
IsoformBodyCoverage pipeline is a Nextflow pipeline for computing Isoform coverage histogram from a RNA-seq data. The pipeline takes in aligned BAM file, a list of isoforms with annotation, and a csv file containing reads uniquely aligned to an isoform. The pipeline computes, for each isoform, a normalised 100-bin coverage histogram using a [modified script](https://github.com/yuxuanlan/RSeQC_sourceforge) of `RSeQC geneBody_coverage.py` (version 5.0.1 on SourceForge). The pipeline outputs an average histogram across all isoforms.


The current version supports BAM files from PacBio and ONT. 

Please see our recent paper on bioRxiv, titled ["A comparison of long-read single-cell transcriptomic approaches"](https://www.biorxiv.org/content/10.1101/2025.07.03.662955v1.full) for details and comparisons. 

## Quick start
See `examples/` for use cases.