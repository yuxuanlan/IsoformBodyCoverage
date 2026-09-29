#!/bin/sh
# run the pipeline on a very cut-down version of data

# run nextflow directly
nextflow run ./single_tx_geneBodyCoverage.nf.ONT.v2.sh \
    -w ./work -with-report -with-trace -with-dag flowchart.html \
    -c ./ONT.data/ONT.pbmc1b.trans.0-500.short.config
        
nextflow run ./single_tx_geneBodyCoverage.nf.PB.v4.sh \
    -w ./work -with-report -with-trace -with-dag flowchart.html \
    -c ./PB.data/revio_sample2A.trans.0-500.short.config"