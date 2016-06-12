#!/usr/bin/env bash

if [[ "$CI" == "true" && "$TRAVIS_PULL_REQUEST" != "false"  && "$TRAVIS_BRANCH" != "master" ]]; then
  echo "Skipping deploy - this is not master"
  exit 0
fi

cd build

# Deploy to main site
git init
git config user.name "Jacob Gillespie"
git config user.email "jacobwgillespie@gmail.com"
git add .
git commit -m "Deploy to GitHub Pages"
git push --force --quiet "https://${GH_TOKEN}@github.com/jacobwgillespie/bpsk31" master:gh-pages > /dev/null 2>&1

# Reset git
rm -rf .git

# Set CDN host
echo "cdn.bpsk31.com" > CNAME

# Deploy to CDN
git init
git config user.name "Jacob Gillespie"
git config user.email "jacobwgillespie@gmail.com"
git add .
git commit -m "Deploy to GitHub Pages"
git push --force --quiet "https://${GH_TOKEN}@github.com/jacobwgillespie/bpsk31-cdn" master:gh-pages > /dev/null 2>&1
