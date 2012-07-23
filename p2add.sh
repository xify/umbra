. ./env.rc

INSTALL_NAME=$1
REPO_LIST=$2
IU_LIST=$3

# <profile> <repositories list> <IUs list>
function add {
    echo Add more artifacts to Eclipse IDE
	echo ${IU_LIST} from ${REPO_LIST}
java -jar ${PLATFORM_RUNTIME_HOME}/plugins/org.eclipse.equinox.launcher_*.jar \
    -nosplash \
    -application org.eclipse.equinox.p2.director \
    -repository ${BASE_REPO},$2 \
    -installIU $3 \
    -destination ${INSTALL_HOME}/$1 \
    -profile $1 \
    -profileProperties org.eclipse.update.install.features=true \
	-bundlepool ${BUNDLE_POOL} \
    -shared ${PROFILE_HOME} \
    -vmargs -Xmx512m
}

add ${INSTALL_NAME} ${REPO_LIST} ${IU_LIST}