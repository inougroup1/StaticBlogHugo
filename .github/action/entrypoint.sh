#!/bin/sh -l
sh -c "git submodule update --init --recursive"
sh -c "/go/bin/hugo $*"
cd public
git add .
git commit -m "test"
git push origin master