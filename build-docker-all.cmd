@echo off
echo build docker images ...
@echo on
call ./mvnw clean install -DskipTests -U -f ./cloudware-starter/pom.xml
call ./mvnw clean install -U -f ./common/pom.xml
call ./mvnw clean package -DskipTests -P 'docker-build' -U -f ./system/pom.xml
call ./mvnw clean package -DskipTests -P 'docker-build' -U -f ./msg-monitor/pom.xml
call ./mvnw clean package -DskipTests -P 'docker-build' -U -f ./sc-coc/pom.xml