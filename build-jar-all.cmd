@echo off
echo build jar ...
@echo on
call ./mvnw.cmd clean -DskipTests install -U -f ./cloudware-starter/pom.xml
call ./mvnw.cmd clean install -U -f ./common/pom.xml
call ./mvnw.cmd clean -DskipTests package -U -f ./system/pom.xml
call ./mvnw.cmd clean -DskipTests package -U -f ./msg-monitor/pom.xml
call ./mvnw.cmd clean -DskipTests package -U -f ./sc-coc/pom.xml