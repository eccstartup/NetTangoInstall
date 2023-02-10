#!/bin/bash


cd ./Galapagos
git pull https://github.com/NetLogo/Galapagos

git submodule update --remote --recursive

sbt run
