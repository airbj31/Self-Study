## FASTQ

**FASTQ** format is plain text for storing biological sequence and its quality scores, extended from **FASTA** foramt. in these days this is the standard format to handle high-throughput sequencing data

## Format

FASTQ format is normally 4 line block of strings per sequence

It includes followings

* Sequence identifier (Seq_ID)
* Sequence letters 
* \+
* Quality scores encoded by ASCII code

## Example

```
@SEQ_ID
GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT
+
!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65

```

### 1. the sequence identifier (Seq ID)

* unique ID for the sequence which contains information about the sequences.

e.g) Illumina sequence identifier


```
@HS2000-1259_212:3:1103:14322:69223/1
```

| variable   | description |
| :---: | :---: |
| instrument | HS2000-1259_212 |
| flow cell lane | 3 |
| tile number within the flow cell lane | 1103 |
| `X`-coordinate of the cluster within the tile | 14322 |
| index number for a multiplexed sample | #0 ( 0 for indexing) |
| the member of pair | /1 or /2 |

### 2. the Sequence letters

```
GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT
```

### 3. + sign

this is just an identifier which distinguish the sequence letter and its scores.

```
+
```

### Quality score

a de facto standard for representing sequencing read base quality.

the quality score is different by the format

| Description, OBF name | ASCII character |  | Quality Score |   |
| :---: | :---: | :---: | :---: | :---: |
| Sanger Standard | Range | Offset | Type | Range |
| fastq-sanger    | 33-126 | 33 | PHRED | 0-93 |
| solexa/early Illumina | 59 - 126 | 64 | Solex | -5 - 62 |
| Illumina 1.3+         | 64 - 126 | 64 | PHRED | 0 -62 |

## References

1. https://en.wikipedia.org/wiki/FASTQ_format
2. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2847217

    * FASTQ/Quality


