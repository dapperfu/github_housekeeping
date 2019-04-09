#!/usr/bin/env bash

#rm -rf trampoline
git clone --recurse-submodules --jobs=8 https://github.com/jed-frey/trampoline.git
cd trampoline
git remote add origin-ssh git@github.com:jed-frey/trampoline.git
git remote add upstream https://github.com/TrampolineRTOS/trampoline.git
git fetch --all
git merge upstream/master
git pull origin master
git push origin-ssh
