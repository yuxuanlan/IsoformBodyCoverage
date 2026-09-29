# TranscriptBodyCoverage
This is nextflow pipeline described in the following paper: 

> **A comparison of long-read single-cell transcriptomic approaches**; Anita L. Ahlert Scoones, Yuxuan Lan, Charlotte Utting, Lydia Pouncey, Ashleigh Lister, Sofia Kudasheva, Neelam Mehta, Naomi Irish, David Swarbreck, Karim Gharbi, Wilfried Haerty, Adam P Cribbs, David J. Wright, Iain C. Macaulay; bioRxiv 2025.07.03.662955; doi: https://doi.org/10.1101/2025.07.03.662955


## Install and run
Nextflow is pre-required for running the pipeline.

The pipeline calls a modified version of RSeQC. For details please see the header of `src/sif/geneBody_coverage.py`.

Example of running the pipeline on ONT data:
```
nextflow run ./single_tx_geneBodyCoverage.nf.ONT.v2.sh \
    -w ./work -with-report -with-trace -with-dag flowchart.html \
    -c ./ONT.data/ONT.pbmc1b.trans.0-500.short.config
```

On PacBio data
```
nextflow run ./single_tx_geneBodyCoverage.nf.PB.v4.sh \
    -w ./work -with-report -with-trace -with-dag flowchart.html \
    -c ./PB.data/revio_sample2A.trans.0-500.short.config"
```
The above commands use the following files, which can be downloaded from zenodo.

ONT:
- pbmc1b_ONT_2026.tagged.bam

PacBio: 
- revio_sample2A.scisoseq.mapped.bam
- gencode.v39.annotation.coding.CDS.bed
- scisoseq.annotated.info.csv