#!/bin/sh

cd /home/eric/git/QEA-course/Module\ 1/Shapes\ 2/

git pull

pdflatex QEA_ShapesII.tex 

git add QEA_ShapesII.pdf 

git commit QEA_ShapesII.pdf -m "Routine recompile"

git push
