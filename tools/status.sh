#!/bin/bash


pushd `dirname "$0"`/..
for r in `find . -name .git`; do
    pushd `dirname "$r"`
    git status
    popd
done
popd
