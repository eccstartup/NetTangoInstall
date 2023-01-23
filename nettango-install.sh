#!/bin/bash

git clone https://github.com/NetLogo/NetTango
git clone https://github.com/NetLogo/Galapagos

# build nettango.js and nettango.css
cd ./NetTango
npm link
npm link @netlogo/nettango
npm run build

# copy files
cp nettango.js ../Galapagos/target/web/public/main/nettango/nettango.js
cp nettango.css ../Galapagos/target/web/public/main/nettango/nettango.css

cd ../Galapagos
cp ./target/web/public/main/nettango/nt-models ./public/nt-modelslib

# run
sbt run
