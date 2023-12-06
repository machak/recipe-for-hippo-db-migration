#!/bin/sh
cp /home/user/Downloads/hippo-addon-checker-2.7.0.jar ../lib
cp /home/user/Downloads/ojdbc8.jar  ../lib
cp /home/user/Downloads/jackrabbit-standalone-2.20.13.jar ../lib
cp /home/user/Downloads/postgresql-42.7.0.jar ../lib
SOURCE_REPO="/home/user/projects/demo/migration/storage"
CATALINA_BASE="/home/user/projects/demo/migration/target/tomcat9x"
CATALINA_LIB="/home/user/projects/demo/migration/target/cargo/installs/apache-tomcat-9.0.54/apache-tomcat-9.0.54"
cp -r $CATALINA_BASE/common/lib/*.jar  ../lib
cp -r $CATALINA_BASE/shared/lib/*.jar  ../lib
cp -r $CATALINA_LIB/lib/*.jar    ../lib
cp -r $CATALINA_BASE/webapps/cms/WEB-INF/lib/*.jar  ../lib
# copy repo:
cp -r  $SOURCE_REPO ../source-storage
cp oracle_workspace.xml ../source-storage/workspaces/default/workspace.xml

#sh bin/migrate.sh \
 #  --conf conf/source-repository.xml \
 #  --backup-conf conf/backup-repository.xml \
 #  --repo source-storage \
 #  --backup-repo backup-storage