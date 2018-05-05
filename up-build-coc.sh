#/bin/sh
echo "update src and build docker images for sc-coc ..."
git pull
git submodule update --recursive --remote
./mvnw clean package -DskipTests -P 'docker-build' -U -f ./sc-coc/pom.xml