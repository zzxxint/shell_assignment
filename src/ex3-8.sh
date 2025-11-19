#!/bin/bash

if [ ! -d DB ]; then
    mkdir DB
fi

cd DB
touch file1.txt file2.txt file3.txt file4.txt file5.txt
tar -cvf files.tar file*.txt

cd ..
mkdir -p train
cd train

for f in ../DB/file*.txt
do
    ln -s "$f" .
done
