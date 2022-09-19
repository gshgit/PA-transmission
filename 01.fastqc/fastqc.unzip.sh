for i in $(cat /storage/home/hcoda1/2/sgan30/p-sbrown365-0/01.fastqc/sampleFolderList);do
    cd /storage/home/hcoda1/2/sgan30/p-sbrown365-0/01.fastqc/$i
    unzip *R1_001_fastqc.zip
    cd ..
done
