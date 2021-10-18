#!/bin/bash

fastqc $1.fastq.gz
mv $1_fastqc.html $1.html
rm $1_fastqc.zip
minimap2 -d ref.mmi ref.fa
minimap2 -a ref.mmi $1.fastq.gz > $1.sam
samtools flagstat $1.sam > $1_flagstat.txt
PY_RES=$(python script.py $1_flagstat.txt)
if (( $(echo "$PY_RES > 0.9" | bc -l) ));
then
   echo "OK!"
else
   echo "not OK..."
fi
