#!/usr/bin/env bash

URL=git@github.com:jed-frey/open-zwave.git
UPSTREAM=https://github.com/OpenZWave/open-zwave.git
git clone --recurse-submodules --jobs=8 ${URL}
cd open-zwave
git remote add upstream ${UPSTREAM}
git fetch --all
git merge upstream/master "Merged from upstream"
git pull origin master
git push origin
