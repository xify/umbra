. ./env.rc

PROFILE_NAME=juno

mkdir -p ${BUNDLE_POOL}
mkdir -P ${PROFILE_HOME}
mkdir -p ${INSTALL_HOME}
mkdir -p ${PLATFORM_RUNTIME_HOME}

pushd ${PLATFORM_RUNTIME_HOME}/..
wget -N ${PLATFORM_RUNTIME_URL}
tar -xzf ${PLATFORM_RUNTIME_FILE}
popd

# EPP Reporting
./p2install.sh

# m2eclipse
./p2add.sh ${PROFILE_NAME} "http://download.eclipse.org/technology/m2e/releases" "org.eclipse.m2e.feature.feature.group"

# subversive
./p2add.sh ${PROFILE_NAME} "http://ftp.jaist.ac.jp/pub/eclipse/technology/subversive/1.0/juno-site/,http://community.polarion.com/projects/subversive/download/eclipse/3.0/juno-site/,http://community.polarion.com/projects/subversive/download/integrations/juno-site/" "org.eclipse.team.svn.feature.group,org.eclipse.team.svn.resource.ignore.rules.jdt.feature.group,org.eclipse.team.svn.mylyn.feature.group,org.polarion.eclipse.team.svn.connector.feature.group,org.polarion.eclipse.team.svn.connector.svnkit17.feature.group,org.eclipse.team.svn.revision.graph.feature.group"

# findbug
./p2add.sh ${PROFILE_NAME} http://findbugs.cs.umd.edu/eclipse/ edu.umd.cs.findbugs.plugin.eclipse.feature.group

# checkstyle
./p2add.sh ${PROFILE_NAME} http://eclipse-cs.sf.net/update/ net.sf.eclipsecs.feature.group

# scala
./p2add.sh ${PROFILE_NAME} "http://download.scala-ide.org/releases-29/stable/site" org.scala-ide.sdt.feature.feature.group

# Tasktop
#./p2add.sh ${PROFILE_NAME} "http://tasktop.com/downloads/discovery/update,http://tasktop.com/downloads/update/release/ide" "com.tasktop.client_feature.feature.group"

# Mylyn-JIRA
#./p2add.sh ${PROFILE_NAME} "http://update.atlassian.com/atlassian-eclipse-plugin/e3.6" "com.atlassian.connector.eclipse.feature.group,com.atlassian.connector.eclipse.jira.feature.group,com.atlassian.connector.eclipse.subversive.feature.group"

# Google SDK
./p2add.sh ${PROFILE_NAME} "http://dl.google.com/eclipse/plugin/4.2" "com.google.gdt.eclipse.suite.e42.feature.feature.group,com.google.gwt.eclipse.sdkbundle.e42.feature.feature.group"

# Google Android SDK
#./p2add.sh ${PROFILE_NAME} "https://dl-ssl.google.com/android/eclipse/" "com.android.ide.eclipse.adt.feature.group,com.android.ide.eclipse.ddms.feature.group,com.android.ide.eclipse.hierarchyviewer.feature.group,com.android.ide.eclipse.traceview.feature.group"

# eGit
#./p2add.sh ${PROFILE_NAME} http://download.eclipse.org/egit/updates "org.eclipse.jgit.feature.group,org.eclipse.egit.feature.group"

# Spring IDE
./p2add.sh ${PROFILE_NAME} "http://dist.springsource.com/release/TOOLS/update/e4.2,http://dist.springsource.com/release/TOOLS/composite/e4.2" "org.springframework.ide.eclipse.feature.feature.group,com.springsource.sts.feature.group,org.springframework.ide.eclipse.batch.feature.feature.group,org.springframework.ide.eclipse.aop.feature.feature.group,org.springframework.ide.eclipse.autowire.feature.feature.group,org.springframework.ide.eclipse.osgi.feature.feature.group,org.springframework.ide.eclipse.security.feature.feature.group,org.springframework.ide.eclipse.mylyn.feature.feature.group"

# EclEmma
#./p2add.sh ${PROFILE_NAME} "http://update.eclemma.org/" "com.mountainminds.eclemma.feature.feature.group"

# Clover
./p2add.sh ${PROFILE_NAME} "http://update.atlassian.com/eclipse/clover" "com.cenqua.clover.feature.group"

# Template
# ./p2add.sh ${PROFILE_NAME} "" ""
