#!/bin/sh
cd ${SRC_PKG}
npm install 
npm run build
cp -r ${SRC_PKG} ${DEPLOY_PKG}
