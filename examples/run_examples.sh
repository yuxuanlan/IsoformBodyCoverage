# run ONT example:  NEEDS MORE TESTING

# from run5/
cd ./ONT/

# nextflow version:
source nextflow-22.04.0 

nextflow run main.nf --type "ONT" \
    -w ./work \
    -with-report -resume -with-trace -with-dag flowchart.html \
    -c $workdir/revio_sample1B.trans.0-500.short.config


# run pacbio revio example: (run3/)
cd ./pb/

source nextflow-22.04.0
nextflow run main.nf --type "pb" \
    -w $workdir/work \
    -with-report -resume -with-trace -with-dag flowchart.html \
    -c $workdir/revio_sample1B.trans.0-500.short.config