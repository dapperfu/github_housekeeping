#!/usr/bin/env bash

URL=git@github.com:jed-frey/open-zwave-control-panel.git
UPSTREAM=https://github.com/OpenZWave/open-zwave-control-panel.git
git clone --recurse-submodules --jobs=8 ${URL}
cd open-zwave-control-panel
git remote add upstream ${UPSTREAM}
git fetch --all
git merge upstream/master -m "Merged from upstream"
cd open-zwave
git checkout origin/master
cd ..
git commit -am "Updated submodule"

git pull origin
git push origin
