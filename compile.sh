#!/bin/sh

TARGET=$1;
COMPILE_MODE=$2;

echo "Compiling file $TARGET in mode $COMPILE_MODE"

echo "Compile One";
pdflatex -shell-escape -synctex=1 -interaction=nonstopmode $TARGET.tex >> out.txt

if [ "$COMPILE_MODE" = "bib" ]
then
	echo "Bibliography";
	bibtex $TARGET.aux >> /dev/null

	echo "Compile Three";
	pdflatex -shell-escape -synctex=1 -interaction=nonstopmode $TARGET.tex >> /dev/null

	echo "Compile Four";
	pdflatex -shell-escape -synctex=1 -interaction=nonstopmode $TARGET.tex >> /dev/null
fi
