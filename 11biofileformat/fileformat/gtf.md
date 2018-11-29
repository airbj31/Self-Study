## Gene transfer format (GTF)

 GTF file is **tab** delimetered text 
 
* retrieved from general feature format (GFF).



## Structure of the file

```
#seqname   source      feature start   end  score strand frame                            attributes
     381 Twinscan          CDS   380   401      .      +     0  gene_id "001"; transcript_id "001.1";
     381 Twinscan          CDS   501   650      .      +     2  gene_id "001"; transcript_id "001.1";
     381 Twinscan          CDS   700   707      .      +     2  gene_id "001"; transcript_id "001.1";
     381 Twinscan  start_codon   380   382      .      +     0  gene_id "001"; transcript_id "001.1";
     381 Twinscan   stop_codon   708   710      .      +     0  gene_id "001"; transcript_id "001.1";
```

* **seqname :**   
    sequence name where the feature is located.commonly chr id or contig name.

* **source :**  
    * unique label indicating where the annotation coms from. 
    * generally, program or public database

* **feature :** 
    * generally, feature type name
      e.g ) CDS, start_codon, stop_codon.
    * others are ptional feature elements such as *5UTR*,*3UTR*,*inter*,*inter_CNS*,*intron_CNS*, *exon*.
    * please see http://www.sequenceontology.org/.

* **start**, **end** 
    * integer. starting and end coordinates of the feature relative to the beginning of the sequence named in **seqname**.
    * sequence is starting from 1.

* **score**
    * degree of conficence in the feature's existence and coordinates.
    * The value of this field has no global scale but may have relative significance when the **source** field indicates the prediction program used to create this annotation. It may be a floating point number or integer, and not necessary and may be replaced with a dot.

* **frame**
    * states where the codon starting point. defined by $3-((length-frame))\;mod\;3$
    * 0 : 1st base is codon starting point.
    * 1 : 2nd base is codon starting point
    * 2 : 3rd base is codon starting point
    
* **attriubutes**
    * gene_id       : A globally unique identifier for the genomic locus of the script. If empty, no gene is associated with this feature
    * transcript_id : A globally unique identifier for the genomic locus of the script. If empty, no transcript is associated with this feature

* comments
    * comments begin with a hash("#") and continue to the end of the line.
    * Nothing beyond a hash will be parsed. these may occur anywhee in the file.
    

## script and resources

Several Perl scripts have been written for checking, parsing, correcting, and comparing GTF-formatted annotations. Most of the important ones are included the Eval package, which comes equipped with a GTF parsing Perl package GTF.pm.

* [Eval Software](http://mblab.wustl.edu/software.html#evalLink)
* [Eval Documentation]()

* GFF specification at Sanger

## Reference

