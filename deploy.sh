#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

echo 'lucky' > readme.md
git init
git add -A
git commit -m 'deploy'
git branch -M main

# 部署到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

git remote add origin git@github.com:JianLiu93/vue-LotteryDraw-1.git
git push -f origin main

cd -