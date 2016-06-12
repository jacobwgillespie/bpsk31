#!/usr/bin/env bash

if [[ "$CI" == "true" && "$TRAVIS_PULL_REQUEST" != "false"  && "$TRAVIS_BRANCH" != "master" ]]; then
  echo "Skipping deploy - this is not master"
  exit 0
fi

cd build

git init

git config user.name "Jacob Gillespie"
git config user.email "jacobwgillespie@gmail.com"

git add .
git commit -m "Deploy to GitHub Pages"

git push --force --quiet "https://${GH_TOKEN}@github.com/jacobwgillespie/bpsk31.com" master:gh-pages > /dev/null 2>&1
