#!/bin/bash

git clone https://github.com/NetLogo/NetTango
git clone https://github.com/NetLogo/Galapagos

# build nettango.js and nettango.css
cd ./NetTango
git submodule update --init --recursive
npm link
npm link @netlogo/nettango
npm audit fix
npm run build

# copy files
#cp nettango.js ../Galapagos/target/web/public/main/@netlogo/nettango/nettango.js
#cp nettango.css ../Galapagos/target/web/public/main/@netlogo/nettango/nettango.css

cp -R ./nt-models/. ../Galapagos/public/nt-modelslib

cd ../Galapagos
sbt run
