#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
echo 'vuese.org' > CNAME

git init
git config user.name 'HcySunYang'
git config user.email 'HcySunYang@outlook.com'
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:vuese/website.github.io.git master

cd -