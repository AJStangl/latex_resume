#!/usr/bin/env bash
timestamp=$(date "+%Y-%m-%d-%s")

selection=$1
homedir=$(/mnt/c/Users/ajsta/repos/ajstangl/ajstangl/latex_resume)

cd "$homedir"

printf "Selection Menu\n"
printf "===========\n"
printf "Resume\t1\n"
printf "Cover Letter\t2\n"
printf "Both\t3\n"

if [ "$selection" -eq 1 ]
then
     make resume.pdf
     resumename=$(basename "$homedir"/docs/resume.pdf .pdf)
     mv "$homedir"/docs/resume.pdf "$resumename"."$timestamp".pdf
     open "$resumename"."$timestamp".pdf

elif [ "$selection" -eq 2 ]
then
    make cover.pdf
    coverlettername=$(basename /"$homedir"/docs/coverletter.pdf .pfd)
    mv "$homedir"/docs/coverletter.pdf "$coverlettername"."$timestamp".pdf
    open "$coverlettername"."$timestamp".pdf
elif [ "$selection" -eq 3 ]
then
    make resume.pdf
    make cover.pdf
    resumename=$(basename "$homedir"/docs/resume.pdf .pdf)
    coverlettername=$(basename "$homedir"/docs/coverletter.pdf .pfd)
    mv "$homedir"/docs/coverletter.pdf "$coverlettername"."$timestamp".pdf
    mv "$homedir"/docs/resume.pdf "$resumename"."$timestamp".pdf
    open "$resumename"."$timestamp".pdf
    open "$coverlettername"."$timestamp".pdf
else
    printf "Invalid Option\n"
    exit 1
fi