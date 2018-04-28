#/bin/sh
echo "build docker images ..."
./mvnw clean install -DskipTests -U -f ./cloudware-starter/pom.xml
./mvnw clean install -U -f ./common/pom.xml
./mvnw clean package -DskipTests -P 'docker-build' -U -f ./system/pom.xml
./mvnw clean package -DskipTests -P 'docker-build' -U -f ./msg-monitor/pom.xml
./mvnw clean package -DskipTests -P 'docker-build' -U -f ./sc-coc/pom.xml