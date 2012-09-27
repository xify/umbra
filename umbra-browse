. env.rc

PROFILE_NAME=indigo

${PLATFORM_RUNTIME_HOME}/eclipse \
   -nosplash \
   -application org.eclipse.equinox.p2.director \
   -repository $1 \
   -list  -destination ${INSTALL_HOME} \
   -profile ${PROFILE_HOME} \
   -profileProperties org.eclipse.update.install.features=true \
   -shared ${PROFILE_HOME} \
   -vmargs -Xmx512m
