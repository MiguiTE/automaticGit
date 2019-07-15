#!/bin/bash
repo=${1}
dir="/home/doctor/workspace/flutter/"

source ${dir}"automaticGit/credentials.py"

python ${dir}"automaticGit/app.py" ${repo}

mkdir ${dir}${repo}
cd ${dir}${repo}
git init
echo "# "${repo} > README.md
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/${user}/${repo}.git
git push -u origin master
code .