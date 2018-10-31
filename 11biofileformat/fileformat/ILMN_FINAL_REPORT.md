## Illumina Final Report

the desciption is modified version of [reference:1](http://www.well.ox.ac.uk/~neilr/mitrebox_docs/formats/illm_final_report/#illumina-final-report)

Illumina Final Report is a flat text file that is exported from genotype calling of Genome Studio genotyping module.

The file can be exported in individual-wise ordering or in marker-wise ordering.

One or more Final Reports can be converted into a Genotype Matrix fileset using the task IllmFinalReportTransform.

The tranformation task extracts the 10 fields for which there are downstream uses, for clusterplot generation only the first 6 are a requirement:

## description

SNP Name (Required)	: 
Sample ID (Required)	:
Allele1 - Top		: allele 1 @ Top position
Allele2 - Top		: allele 2 @ Top positio
X			: Normalized intensity of A allele
Y			: Normalized intensity of B allele
B Allele Freq		: 
Log R Ratio		: base-2 log of the normalized R value over the expected R value for the theta value.
X Raw			: Raw intensity of the A allele
Y Raw			: Raw intensityof the B allele

**minor description**

*GSGT* stands for GenomeStudio GenoTyping module 


## Top/Bot notation.




## example

A section from a Final Report can be seen in the box below.

[Header]

GSGT Version    2.0.3

Processing Date 11/6/2017 3:54 PM

Content     GSA-24v1-0_A6.bpm

Num SNPs    642824

Total SNPs  642824

Num Samples 72

Total Samples   72

[Data]

SNP Name    Sample ID   Allele1 - Top   Allele2 - Top   X   Y   B Allele Freq   Log R Ratio X Raw   Y Raw

1:100292476 201219090129_R01C01 A   A   0.810   0.269   0.0000  0.2587  7058    1322

1:101064936 201219090129_R01C01 A   A   2.618   0.586   0.0000  0.0976  22596   2916

1:103380393 201219090129_R01C01 G   G   0.032   0.759   1.0000  -0.0109 453 3544

1:104303716 201219090129_R01C01 G   G   0.046   0.783   0.9907  -0.0202 573 3660


1:104864464 201219090129_R01C01 G   G   0.238   1.216   1.0000  -0.0493 2283    5682

1:106737318 201219090129_R01C01 A   A   0.564   0.045   0.0223  0.1700  4920    263

1:109439680 201219090129_R01C01 A   A   0.655   0.061   0.0402  0.1606  5933    480

1:111119214 201219090129_R01C01 G   G   0.089   1.150   0.9965  0.0302  993 5365

1:114483147 201219090129_R01C01 A   A   1.134   0.077   0.0226  -0.1206 9806    451

1:118227370 201219090129_R01C01 A   A   0.992   0.048   0.0000  -0.0965 8583    308

## reference

1. http://www.well.ox.ac.uk/~neilr/mitrebox_docs/formats/illm_final_report/#illumina-final-report
2. https://support.illumina.com/content/dam/illumina-support/documents/documentation/software_documentation/genomestudio/genomestudio-2-0/genomestudio-genotyping-module-v2-user-guide-11319113-01.pdf

## Author

## Author

<img align="left" src="../img/EDGC_LOGO_EN.png" style="border: 1px solid #ddd;border-radius: 4px;padding: 5px">
**Byungju Kim** <br /> Research Scientist / Bioinformatics Team <br /> \# 291 Harmony-ro, Yeonsu-gu, Incheon <br /> South Korea 22014. <br /> mobile : +82-10-5091-8731 <br /> email : byungju.kim@edgc.com <br />
