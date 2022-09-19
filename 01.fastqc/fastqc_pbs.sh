#!/bin/bash
f1=/storage/home/hcoda1/2/sgan30/p-sbrown365-0/01.fastqc
data=(/storage/coda1/p-sbrown365/0/shared/rich_project_bio-brown-shared/James_dir/trans/Transmission/\"Tranmission fastq\")

#cat $(ls $f1/sampleFolderList0*) | while read i; do
#	echo $i
#done
for n in {0..4};do
    #echo "$f1/sampleFolderList0$n"
    var='$i'
    echo -e "#PBS -N fastqc_sampleFolderList0$n
#PBS -A GT-sbrown365
#PBS -l nodes=1:ppn=4
#PBS -l walltime=1:00:00
#PBS -q inferno
#PBS -j oe
#PBS -o fastqc_sampleFolderList0$n.out
#PBS -m abe
#PBS -M shuheng.gan@gatech.edu

module load fastqc
#data=(/storage/coda1/p-sbrown365/0/shared/rich_project_bio-brown-shared/James_dir/trans/Transmission/\"Tranmission fastq\")

#cat $f1/sampleFolderList0$n | while read i; do

for i in \$(cat $f1/sampleFolderList0$n);do
    mkdir $f1/$var 
    fastqc ${data[@]}/$var/*_R1_001.fastq.gz ${data[@]}/$var/*_R2_001.fastq.gz -o $f1/$var --noextract -f fastq
done
" > $f1/sampleFolderList0$n.fastqc.pbs

done 
