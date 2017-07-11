#!/bin/bash
#
# The current freebayes workflow for jointly calling variants
# in a collection of tumor / normal samples ($BAM_FILES)
# used in a few of the cancer analysis projects in the Marth lab.

freebayes \
    --min-alternate-fraction 0.05 \
    --allele-balance-priors-off \
    --report-genotype-likelihood-max \
    --genotype-qualities \
    --pooled-discrete \
    --pooled-continuous \
    -f $REF \
    -v $OUT_FILENAME \
    $BAM_FILES
