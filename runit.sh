#!/usr/bin/env bash
timestamp=$(date "+%Y-%m-%d-%s")

cd /Users/astangl/PycharmProjects/latex_resume

make resume.pdf

resumename=$(basename /Users/astangl/PycharmProjects/latex_resume/docs/resume.pdf .pdf)

mv /Users/astangl/PycharmProjects/latex_resume/docs/resume.pdf $resumename.$timestamp.pdf

open $resumename.$timestamp.pdf