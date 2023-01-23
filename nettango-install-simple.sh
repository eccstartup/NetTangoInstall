#!/bin/bash

git clone https://github.com/NetLogo/NetTango
git clone https://github.com/NetLogo/Galapagos

cd ./NetTango
git submodule update --init --recursive
cp -R ./nt-models/. ../Galapagos/public/nt-modelslib

cd ../Galapagos
sbt run
