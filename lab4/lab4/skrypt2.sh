#!/bin/bash

if [[ $1 =~ ^[0-9]+$ ]]; then
    count=$1
else
    count=30
fi

for ((i=1; i<=$count; i++)); do
    filename="log$i.txt"
    echo "Nazwa pliku: $filename" > $filename
    echo "Nazwa skryptu: skrypt.sh" >> $filename
    echo "Data: $(date)" >> $filename
done

exit 0
