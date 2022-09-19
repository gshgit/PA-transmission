#!/bin/bash
f1=/storage/home/hcoda1/2/sgan30/p-sbrown365-0/01.fastqc
f3=/storage/home/hcoda1/2/sgan30/p-sbrown365-0/03.assembly
f4=/storage/home/hcoda1/2/sgan30/p-sbrown365-0/04.16sRNA

cat $f1/sampleFolderList | while read i; do
    IFS=' ' read -r -a contig <<< $(find $f3/sample/$i -name "final.contigs.fa" -exec ls {} \;)
    if [ -z $contig ]
    then
        echo "$i not exist"
    else
    #    echo $contig
        mkdir -p $f4/sample/$i
        echo "barrnap --kingdom bac --threads 24 --outseq $f4/sample/$i/$i.rrna.fa < $contig > $f4/sample/$i/$i.rrna.gff" >> barrnap.list.sh

    fi
done
