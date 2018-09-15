#!/usr/bin/env bash
timestamp=$(date "+%Y-%m-%d-%s")

selection=$1
cd /Users/astangl/PycharmProjects/latex_resume

printf "Selection Menu\n"
printf "===========\n"
printf "Resume\t1\n"
printf "Cover Letter\t2\n"
printf "Both\t3\n"

if [ $selection -eq 1 ]
then
     make resume.pdf
     resumename=$(basename /Users/astangl/PycharmProjects/latex_resume/docs/resume.pdf .pdf)
     mv /Users/astangl/PycharmProjects/latex_resume/docs/resume.pdf $resumename.$timestamp.pdf
     open $resumename.$timestamp.pdf

elif [ $selection -eq 2 ]
then
    make cover.pdf
    coverlettername=$(basename /Users/astangl/PycharmProjects/latex_resume/docs/coverletter.pdf .pfd)
    mv /Users/astangl/PycharmProjects/latex_resume/docs/coverletter.pdf $coverlettername.$timestamp.pdf
    open $coverlettername.$timestamp.pdf
elif [ $selection -eq 3 ]
then
    make resume.pdf
    make cover.pdf
    resumename=$(basename /Users/astangl/PycharmProjects/latex_resume/docs/resume.pdf .pdf)
    coverlettername=$(basename /Users/astangl/PycharmProjects/latex_resume/docs/coverletter.pdf .pfd)
    mv /Users/astangl/PycharmProjects/latex_resume/docs/coverletter.pdf $coverlettername.$timestamp.pdf
    mv /Users/astangl/PycharmProjects/latex_resume/docs/resume.pdf $resumename.$timestamp.pdf
    open $resumename.$timestamp.pdf
    open $coverlettername.$timestamp.pdf
else
    printf "Invalid Option\n"
    exit 1
fi