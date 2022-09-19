#PBS -N bowtie2.align
#PBS -A GT-sbrown365
#PBS -l nodes=1:ppn=4
#PBS -l walltime=6:00:00
#PBS -q inferno
#PBS -j oe
#PBS -o bowtie2.align.out
#PBS -m abe
#PBS -M shuheng.gan@gatech.edu

module load bowtie2/2.3.5.1
fq=/storage/coda1/p-sbrown365/0/shared/rich_project_bio-brown-shared/James_dir/trans/Transmission/Transmission_fastq
f4=/storage/home/hcoda1/2/sgan30/p-sbrown365-0/04.16sRNA
#sample=$f4/sample
coverage=$f4/check2rna/
bowtie2 -x $coverage/012520_015.rrna_16_23 -1 $fq/012520_015/*R1_001.fastq.gz -2 $fq/012520_015/*R2_001.fastq.gz -S $coverage/012520_015.rrna_16_23.sam --no-unal -p 4
bowtie2 -x $coverage/020120_117.rrna_16_23 -1 $fq/020120_117/*R1_001.fastq.gz -2 $fq/020120_117/*R2_001.fastq.gz -S $coverage/020120_117.rrna_16_23.sam --no-unal -p 4
