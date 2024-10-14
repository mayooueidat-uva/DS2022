
#!/bin/bash
 
curl https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz > lab3-bundle.tar.gz

tar xzvf lab3-bundle.tar.gz > /dev/null   
VAR0=$(tar xzvf lab3-bundle.tar.gz)
echo "Name of file extracted from archive: $VAR0"

sleep 1
echo "Cleaning up..."
awk '!/^[[:space:]]*$/' lab3_data.tsv > /dev/null

sleep 2
echo "Converting to .csv..."
sed 's/'$'\t''/,/g' lab3_data.tsv > lab3_data.csv

sleep 1
VAR1=$(tail -n +2 lab3_data.tsv | wc -l) 
echo "Number of lines of data: $VAR1"

sleep 1
echo "Re-compressing..."
tar -cvzf converted-archive.tar.gz lab3_data.csv > /dev/null   

sleep 3
VAR3=$(ls -l converted-archive.tar.gz)
echo "Location of new tarball: $VAR3"
