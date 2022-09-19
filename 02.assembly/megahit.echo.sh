#!/bin/bash
f1=/storage/home/hcoda1/2/sgan30/p-sbrown365-0/01.fastqc
f3=/storage/home/hcoda1/2/sgan30/p-sbrown365-0/03.assembly
data=/storage/coda1/p-sbrown365/0/shared/rich_project_bio-brown-shared/James_dir/trans/Transmission/Transmission_fastq
megahit=/storage/home/hcoda1/2/sgan30/p-sbrown365-0/software/MEGAHIT-1.2.9-Linux-x86_64-static/bin/megahit
cat $f1/sampleFolderList | while read i; do
    #mkdir -p $f2/sample/$i
    IFS=' ' read -r -a r1 <<< $(find "$data"/$i -name "*_R1_001.fastq.gz" -exec ls {} \;)
    #printf '%s\n' ${r1[@]}
    s=${r1%_R1_001.fastq.gz}
    r1="$s"_R1_001.fastq.gz
    r2="$s"_R2_001.fastq.gz
    echo "$megahit -1 $r1 -2 $r2 -o $f3/sample/$i" >> megahit.list.sh
done
