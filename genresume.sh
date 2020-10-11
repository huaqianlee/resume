#!/bin/bash

echo 'Start to generate resume'

title=Huaqian-Lee\'s-Resume #李华乾的个人简历	#网页标题
author=李-华-乾			#resume.md中的名字中有空格，要用“-”代替
date="2020-10-11"
#lang="zh-CN"
#job=Software-Engineer # 软件工程师		#resume.md中你填的职位

if [ -z "$1" ];then # Empty
	lang="zh-CN"
	pandoc -s resume_cn.md -o resume_cn.html -t html5 --self-contained --section-divs --template=resume-template.html -T $title -c css/main.css --variable lang=$lang --variable author-meta=$author --variable date-meta=$date --metadata pagetitle="$title"

#	pandoc -s resume_cn.md -o resume_cn.pdf -t html5 --self-contained --section-divs --template=resume-template.html -T $title -c css/main.css --variable lang=$lang --variable author-meta=$author --variable date-meta=$date --metadata pagetitle="$title"
	echo 'Generate resume_cn.html success!'
else
	lang="en-WW"
	pandoc -s resume_en.md -o resume_en.html -t html5 --self-contained --section-divs --template=resume-template.html -T $title -c css/main.css --variable lang=$lang --variable author-meta=$author --variable date-meta=$date --metadata pagetitle="$title"
	echo 'Generate resume_en.html success!'
fi

# Modify in resume.md to extract personal information to the upper right corner.
#
# 李 华 乾 | Andy Lee  {#name}
# -----------------------
#
# 软件工程师 {#job}
# -----------------------

