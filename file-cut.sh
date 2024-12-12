#!/bin/bash

Usuario=$(whoami)

fraccionamiento=11

for archivo in *.fastq; do

echo "cortando archivo $archivo"
Lineas=$(wc -l < "$archivo")

echo "$archivo tiene $Lineas lineas"

cortar=$((Lineas/fraccionamiento))

head -n "$cortar" "$archivo" > "${archivo%.fastq}_cortado11.fastq"   #encontre qye se coloca %para eliminar el sufijo del nombre del archivo procesado

done
