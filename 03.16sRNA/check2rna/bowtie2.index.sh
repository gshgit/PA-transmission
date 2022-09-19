#PBS -N bowtie2.index
#PBS -A GT-sbrown365
#PBS -l nodes=1:ppn=4
#PBS -l walltime=6:00:00
#PBS -q inferno
#PBS -j oe
#PBS -o bowtie2.index.out
#PBS -m abe
#PBS -M shuheng.gan@gatech.edu

module load bowtie2/2.3.5.1
f4=/storage/home/hcoda1/2/sgan30/p-sbrown365-0/04.16sRNA
#sample=$f4/sample
coverage=$f4/check2rna/
bowtie2-build -f $coverage/012520_015.rrna_16_23.fa $coverage/012520_015.rrna_16_23
bowtie2-build -f $coverage/020120_117.rrna_16_23.fa $coverage/020120_117.rrna_16_23
#mv ~/*bt* .
