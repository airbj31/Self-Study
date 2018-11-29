## Introduction about oxford stat formats.

* [Manchini lab](https://jmarchini.org/) developed lots of programs to handle genomics data.

* the [genotype](#Genotype-file) and [sample](#Sample-file) file is designed to work with [CHIAMO,, HAPGEN, IMPUTE, SNPTEST and GTOOL]((http://www.stats.ox.ac.uk/~marchini/software/gwas/gwas.html)

suppose that we have two individual 1 and 2 and 5 SNPs belows

| SNP | sample1 | sample2 |
| :---: | :---: | :---: |
| SNP1 | AA | AA |
| SNP2 | GG | GT |
| SNP3 | CC | CT |
| SNP4 | CT | CT |
| SNP5 | AG | GG |

## Genotype file

the genotype file stores data on a one-line-per SNP format.

First 5 entries stores SNP_ID, RS_ID for a given SNP, base position, Allele A genotype, and Allele B genotype. the SNP_ID column could be used as the chromosome number. each individual's genotype is expressed as probability (from 0 to 1) with sequencial 3 columns.
the order of genotype is ordered by the sample file's order. the probability does not sum to 1 to allow missing (bad-call) value.

| SNP_ID | RS_ID | BP | Allele A | Allele B | probAA_sample1 | probAB_sample1 | probBB_sample1 | probAA_sample2 | probAB_sample2 | probBB_sample2 | ... |
| :---: | :---: | :----: | :---: | :---:| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| SNP1 | RS1 | 1000 | A | C | 1 | 0 | 0 | 1 | 0 | 0 | ... |
| SNP2 | RS2 | 2000 | G | T | 1 | 0 | 0 | 0 | 1 | 0 | ... |
| SNP3 | RS3 | 3000 | C | T | 1 | 0 | 0 | 0 | 1 | 0 | ... |
| SNP4 | RS4 | 4000 | C | T | 0 | 1 | 0 | 0 | 1 | 0 | ... |
| SNP5 | RS5 | 5000 | A | G | 0 | 1 | 0 | 0 | 0 | 1 | ... |

## Sample files

* sample file should have at least 3 entry, ID_1, ID_2 and missing which denotes for first ID, second ID and missing proportion of each individual.

* second line describes the details of the variables. first 3 elements should be 0 subsequent entries in the lines are described in `variable explanation`.

* the missing values are written as `-9` for SNPTEST v1 and `NA` for SNPTEST v2 with comma-separated list of values.

| ID_1 | ID_2 | missing | cov1 | cov2 | cov3 | cov4 | pheno1 | bin1 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0   | 0   | 0   | D   | D   | C   | C   | P   | B   |
| 1   | 1   | 0.07| 1   | 2   |0.019|-0.08|1.233| 1   |
| 2   | 2   | 0.09| 1   | 2   |0.022|-0.01|6.234| 0   |
| 3   | 3   | 0.07| 2   | 1   |0.025|0.028|6.121| 1   |

* variable explanations

| variable type | description |
| :---: | :--- |
| D | discrete covariate |
| C | Continuous covariate |
| B | Binary Phenotype (0:control;1:case) |
