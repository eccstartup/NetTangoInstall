#!/bin/bash

git clone https://github.com/NetLogo/Galapagos

cd Galapagos
git submodule update --init --recursive

sbt run
