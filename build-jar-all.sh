#/bin/sh
echo "build jar ..."
./mvnw clean install -DskipTests -U -f ./cloudware-starter/pom.xml
./mvnw clean install -U -f ./common/pom.xml
./mvnw clean package -DskipTests -U -f ./system/pom.xml
./mvnw clean package -DskipTests -U -f ./msg-monitor/pom.xml
./mvnw clean package -DskipTests -U -f ./sc-coc/pom.xml