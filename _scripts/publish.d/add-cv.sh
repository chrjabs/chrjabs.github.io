#!/usr/bin/bash

# Download the newest version of my CV and add it to the webpage
echo "Adding CV"
cvdir=~/Git/curiculum_vitae/
wpdir=$(pwd)
cd $cvdir
git pull
latexmk -pdf english.tex
cd $wpdir
mkdir -p assets/pdfs
cp $cvdir/english.pdf assets/pdfs/cv_jabs_christoph.pdf