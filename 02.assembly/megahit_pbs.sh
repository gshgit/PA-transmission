#!/bin/bash
for n in {0..6};do
    echo -e "#PBS -N megahit_0$n
#PBS -A GT-sbrown365
#PBS -l nodes=1:ppn=4
#PBS -l pmem=6gb
#PBS -l walltime=12:00:00
#PBS -q inferno
#PBS -j oe
#PBS -o megahit0$n.out
#PBS -m abe
#PBS -M shuheng.gan@gatech.edu

" > megahit_0$n.qsub.pbs
    cat megahit.list0$n.sh >> megahit_0$n.qsub.pbs

done
