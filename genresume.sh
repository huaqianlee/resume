#!/bin/bash
title=李华乾的个人简历	#网页标题
name=李-华-乾			#resume.md中的名字中有空格，要用“-”代替
job=软件工程师		#resume.md中你填的职位

pandoc -s -S resume.md -o resume.html -t html5 --self-contained --section-divs --template=resume-template.html -T $title -c css/main.css
echo 'Generate resume.html success!'
export LC_COLLATE='C'
export LC_CTYPE='C'
sed -i '' 's/id="'$name'"/id="name"/g'  resume.html
sed -i '' 's/id="'$job'"/id="job"/g'  resume.html
echo 'Done!'
