#!/bin/sh

ANT_LIB=lib
mkdir -p $ANT_LIB
wget https://search.maven.org/remotecontent?filepath=org/flywaydb/flyway-core/9.8.3/flyway-core-9.8.3.jar -O $ANT_LIB/flyway-core.jar
wget https://search.maven.org/remotecontent?filepath=com/ttulka/flyway/flyway-ant/2.18.1/flyway-ant-2.18.1.jar -O $ANT_LIB/flyway-ant.jar
wget https://search.maven.org/remotecontent?filepath=com/h2database/h2/2.1.214/h2-2.1.214.jar -O $ANT_LIB/h2.jar
wget https://search.maven.org/remotecontent?filepath=org/apache/logging/log4j/log4j-api/2.19.0/log4j-api-2.19.0.jar -O $ANT_LIB/log4j-api.jar
wget https://search.maven.org/remotecontent?filepath=org/apache/logging/log4j/log4j-core/2.19.0/log4j-core-2.19.0.jar -O $ANT_LIB/log4j-core.jar

rm -f *.h2.*

ant -lib $ANT_LIB all-test