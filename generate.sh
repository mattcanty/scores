#!/bin/bash

if [ -z "$1" ]
then
  echo "Must provide path to scores, eg '/' or '/madness'"
  exit
fi



case "$OSTYPE" in
  darwin*)  mscore="mscore" ;;
  *)        mscore="musescore" ;;
esac

find src/$1 -name '*.xml' | while read line; do

	outputFile="${line/.xml/.pdf}"
	outputFile="${outputFile/src/output}"

	mkdir -p "${outputFile%/*}"

    echo "Processing '${line##*/}'"

    "${mscore}" $line -o $outputFile
    
    echo "Generated '${outputFile##*/}'"
done
