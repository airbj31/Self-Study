The Variant Call Format (VCF) is a text file format storing genotype data and its related informaton.

the ile is divided into metadata and genotype information with it's coordinates

## Metadata information

* metadata is starting with two comment character (`##`)
* zero-length field is not allowed. `.` might be used as that circumstances.
* for interoperability across platform, VCF compliant implementations must suppoer LF (\n) and  CR+LF (\r\n) new-line

### File format

```
##fileformat=VCFv4.3
```

### Information field format

```
##INFO
```

### Filter field format

```
##FILTER=<ID=ID,Description=`description`>

```


## Genotype information



# Reference

http://samtools.github.io/hts-specs/VCFv4.3.pdf