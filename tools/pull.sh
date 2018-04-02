#!/bin/bash


branch=master
if [ ! "$1" = "" ]; then
    branch="$1"
fi


pushd `dirname "$0"`/..
for r in `find . -name .git`; do
    pushd `dirname "$r"`
    git checkout $branch
    git pull
    popd
done
popd
