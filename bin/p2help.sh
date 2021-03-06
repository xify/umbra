#!/bin/bash
DIR=$( cd "$( dirname "$0" )/.." && pwd )
. $DIR/etc/env.rc

${PLATFORM_RUNTIME_HOME}/eclipse \
   -nosplash \
   -application org.eclipse.equinox.p2.director \
   -help -destination ${INSTALL_HOME} \
   -profile ${PROFILE_HOME} \
   -profileProperties org.eclipse.update.install.features=true \
   -shared ${PROFILE_HOME} \
   -vmargs -Xmx512m
