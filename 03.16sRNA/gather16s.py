#!/usr/bin/env python3

import os
import re

folder1="/storage/home/hcoda1/2/sgan30/p-sbrown365-0/01.fastqc/"
folder4="/storage/home/hcoda1/2/sgan30/p-sbrown365-0/04.16sRNA/"
samplelist="sampleFolderList"
allrna="16srna.fa"

out = open(folder4+allrna,"w")

with open(folder1+samplelist, "r") as SL:
    for eachline in SL:
        sname=eachline.rstrip()
        if os.path.isdir(folder4+"sample/"+sname):
            with open(folder4+"sample/"+sname+"/"+sname+".rrna.fa", "r") as RNA:
                for line in RNA:
                    des = line.rstrip()
                    seq = next(RNA)
                    if re.search("^>16S",des):
                        newdes=">"+sname+":"+des[1:]
                        out.write(newdes+"\n")
                        out.write(seq)
                    
        else:
            print(sname+" not exist")        
        
out.close()
