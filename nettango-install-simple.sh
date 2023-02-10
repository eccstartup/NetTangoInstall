#!/bin/bash

git clone https://github.com/NetLogo/Galapagos

cd Galapagos
git submodule update --init --recursive

npm audit fix --force  # optional

sbt run
