# NetTango Install Guide


### Clone repos

* NetTango: [https://github.com/NetLogo/NetTango](https://github.com/NetLogo/NetTango)
* Galapagos: [https://github.com/NetLogo/Galapagos](https://github.com/NetLogo/Galapagos)

And locate them under the same root folder, for example `nt01`:

then under `nt01`, you will see:

* NetTango
* Galapagos

### Install building essentials

* Install `sbt`
* Install `node`
* Install `jdk 8`

Please Google how to do it.

### Build

Reference: [https://github.com/NetLogo/Galapagos/blob/master/scripts/nettango-package.sh](https://github.com/NetLogo/Galapagos/blob/master/scripts/nettango-package.sh)

* Under folder `NetTango` run `npm link` and then `npm link @netlogo/nettango`
* Under folder `Galapagos` run `sbt run`. When finished, you can kill with `Ctrl-C`
* Under folder `NetTango` run `npm run build` to generate `nettango.js` and `nettango.css`


### Copy files

* Copy `NetTango/nettango.js` to `Galapagos/target/web/public/main/nettango/nettango.js`
* Copy `NetTango/nettango.css` to `Galapagos/target/web/public/main/nettango/nettango.css`
* Copy all files under `Galapagos/target/web/public/main/nettango/nt-models` to `Galapagos/public/nt-modelslib`


### Run

* Under folder `Galapagos` run `sbt run`
* Visit [http://localhost:9000/nettango-builder](http://localhost:9000/nettango-builder)

### Scripts
## 脚本
* [nettango-install.sh](https://github.com/eccstartup/NetTangoInstall/blob/master/nettango-install.sh)
* [nettango-update.sh](https://github.com/eccstartup/NetTangoInstall/blob/master/nettango-update.sh)
