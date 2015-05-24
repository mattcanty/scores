#!/bin/bash

case "$OSTYPE" in
  solaris*) echo "SOLARIS" ;;
  darwin*)  mscore="/Applications/MuseScore 2.app/Contents/MacOS/mscore" ;; 
  linux*)   echo "LINUX" ;;
  bsd*)     echo "BSD" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac

find src/$1 -name '*.xml' | while read line; do

	outputFile="${line/.xml/.pdf}"
	outputFile="${outputFile/src/output}"

	mkdir -p "${outputFile%/*}"

    echo "Processing '${line##*/}'"

    "${mscore}" $line -o $outputFile
    
    echo "Generated '${outputFile##*/}'"
done
