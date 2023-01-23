#!/bin/bash

cd ./NetTango
git pull https://github.com/NetLogo/NetTango
cd ../Galapagos
git pull https://github.com/NetLogo/Galapagos

cd ../NetTango
git submodule update --remote --recursive

npm link
npm link @netlogo/nettango
npm audit fix
npm run build

#cp nettango.js ../Galapagos/target/web/public/main/nettango/nettango.js
#cp nettango.css ../Galapagos/target/web/public/main/nettango/nettango.css
cp -R ./nt-models/. ../Galapagos/public/nt-modelslib

# run
cd ../Galapagos
sbt run
