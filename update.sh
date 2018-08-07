#!/bin/bash

set -eou pipefail

dir=$(dirname "$0")
sha=$1

cd $dir

sed -i -e "s/CLJDOC_ANALYZER_VERSION: .*/CLJDOC_ANALYZER_VERSION: $sha/g" "$dir/.circleci/config.yml"

git diff

read -p "Commit and push? " -n 1 -r

echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
  git add .circleci/config.yml
  git commit -m 'update analyzer version'
  # git push
fi
