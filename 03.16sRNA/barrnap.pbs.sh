#!/bin/bash
for n in {0..4};do
    echo -e "#PBS -N barrnap0$n
#PBS -A GT-sbrown365
#PBS -l nodes=1:ppn=4
#PBS -l pmem=6gb
#PBS -l walltime=6:00:00
#PBS -q inferno
#PBS -j oe
#PBS -o barrnap0$n.out
#PBS -m abe
#PBS -M shuheng.gan@gatech.edu

module load anaconda3/2020.02
conda activate /storage/home/hcoda1/2/sgan30/p-sbrown365-0/software/conda/mpa
" > barrnap0$n.qsub.pbs
    cat barrnap.list0$n.sh >> barrnap0$n.qsub.pbs

done
