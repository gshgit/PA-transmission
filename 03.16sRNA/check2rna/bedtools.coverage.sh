#PBS -N bedtools.coverage
#PBS -A GT-sbrown365
#PBS -l nodes=1:ppn=2
#PBS -l walltime=1:00:00
#PBS -q inferno
#PBS -j oe
#PBS -o bedtools.coverage.out

module load intel/19.0.3
module load bedtools2/2.27.1

f4=/storage/home/hcoda1/2/sgan30/p-sbrown365-0/04.16sRNA
coverage=$f4/check2rna/
#bedtools coverage -a $coverage/012520_015.rrna_16_23.sorted.bam -b $coverage/012520_015.rrna_16_23.bed > $coverage/012520_015.rrna_16_23.coverage.bed
#bedtools coverage -a $coverage/020120_117.rrna_16_23.sorted.bam -b $coverage/020120_117.rrna_16_23.bed > $coverage/020120_117.rrna_16_23.coverage.bed
bedtools coverage -a 012520_015.rrna_16_23.bed -b 012520_015.rrna_16_23.sorted.bam > 012520_015.rrna_16_23.bedtools_coverage
bedtools coverage -a 020120_117.rrna_16_23.bed -b 020120_117.rrna_16_23.sorted.bam > 020120_117.rrna_16_23.bedtools_coverage
