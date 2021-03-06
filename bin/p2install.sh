#!/bin/bash
DIR=$( cd "$( dirname "$0" )/.." && pwd )
. $DIR/etc/env.rc

INSTALL_NAME=juno
PROFILE_NAME=juno
PACKAGE_NAME=epp.package.reporting

# <profile> <top-level iu>
function install {
    echo Installing base artifacts of Eclipse IDE
java -jar ${PLATFORM_RUNTIME_HOME}/plugins/org.eclipse.equinox.launcher_*.jar \
    -nosplash \
    -application org.eclipse.equinox.p2.director \
    -repository ${BASE_REPO},http://ftp.jaist.ac.jp/pub/eclipse/technology/epp/packages/juno/ \
    -installIU $2 \
    -destination ${INSTALL_HOME}/$1 \
    -profile $1 \
    -profileProperties org.eclipse.update.install.features=true \
	-bundlepool ${BUNDLE_POOL} \
    -shared ${PROFILE_HOME} \
    -p2.os ${TARGET_OS} \
    -p2.ws ${TARGET_WS} \
    -p2.arch ${TARGET_ARCH} \
    -vmargs -Xmx512m
}

install ${PROFILE_NAME} ${PACKAGE_NAME}
