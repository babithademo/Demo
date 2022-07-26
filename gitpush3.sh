#! /bin/bash

declare -A map

map["branch1"]="master"
map["branch2"]="Practice"

git init
git add .
git commit -m "committed"

for i in "${!map[@]}"
do
           git remote add $i git@github.com:babithademo/${map[$i]}.git
           git push -u $i 
done          
