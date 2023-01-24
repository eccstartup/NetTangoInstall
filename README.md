# NetTango 本地安装

## TL;DR
* run [nettango-install-simple.sh](https://github.com/eccstartup/NetTangoInstall/blob/master/nettango-install-simple.sh)
* Visit http://localhost:9000/nettango-builder

### 克隆仓库

* NetTango: [https://github.com/NetLogo/NetTango](https://github.com/NetLogo/NetTango)
* Galapagos: [https://github.com/NetLogo/Galapagos](https://github.com/NetLogo/Galapagos)

两个仓库并列放在同一个根目录下面，如：

nt01目录下面

* NetTango
* Galapagos

### 安装软件

* 安装`sbt`
* 安装`node`
* 安装`jdk 8`

请自行安装

### 编译安装

参考文件: [https://github.com/NetLogo/Galapagos/blob/master/scripts/nettango-package.sh](https://github.com/NetLogo/Galapagos/blob/master/scripts/nettango-package.sh)

* NetTango目录下执行`npm link`和`npm link @netlogo/nettango`
* Galapagos目录下执行`sbt run`，成功后`Ctrl-C` kill掉即可
* NetTango目录下执行`npm run build`生成`nettango.js`和`nettango.css`


### 拷贝文件

* `NetTango/nettango.js` 到 `Galapagos/target/web/public/main/nettango/nettango.js`
* `NetTango/nettango.css` 到 `Galapagos/target/web/public/main/nettango/nettango.css`
* `NetTango/nt-models` 到 `Galapagos/public/nt-modelslib`


### 运行

* Galapagos目录下执行`sbt run`
* 访问[http://localhost:9000/nettango-builder](http://localhost:9000/nettango-builder)

## 脚本
* [nettango-install.sh](https://github.com/eccstartup/NetTangoInstall/blob/master/nettango-install.sh)
* [nettango-update.sh](https://github.com/eccstartup/NetTangoInstall/blob/master/nettango-update.sh)
