#!/bin/bash

# Function that graps the creation of a flutter project and git repository
# it starts visual studio code
create () {
    flutter create ${dir}${repo} # create flutter project
    
    python ${dir}"automaticGit/app.py" ${command} ${repo} # create git repository

    # sincronize git repository
    cd ${dir}${repo}
    git init
    echo "# "${repo} > README.md
    git add *
    git commit -m "first commit"
    git remote add origin https://github.com/${user}/${repo}.git
    git push -u origin master
    code .
}

# Delete git repository and flutter project directory
delete () {
    python ${dir}"automaticGit/app.py" ${command} ${repo}
    cd ${dir}
    rm ${dir}${repo} -rf
}

# Make the repository public
makePublic () {
    python ${dir}"automaticGit/app.py" ${command} ${repo}
}

# Get command and repo name
command=${1}
repo=${2}

# Set flutter projects directory
dir="/home/"${USER}"/workspace/flutter/"

# Get credentials
source ${dir}"automaticGit/credentials.py" 

# Manage user input
if [ $command == "create" ]; then
    create
fi

if [ $command == "delete" ]; then
    delete
fi

if [ $command == "makePublic" ]; then
    makePublic
fi