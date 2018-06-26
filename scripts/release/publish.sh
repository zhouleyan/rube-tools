#!/bin/bash

# git pull
git pull origin master

# npm install
rm package-lock.json
npm install --registry=https://registry.npmjs.org

# ADD commit
git add -A
git commit -m 'build: package'
git push origin master

# publish
npm publish
