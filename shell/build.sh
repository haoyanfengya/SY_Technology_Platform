#!/usr/bin/env bash

set -e
set -x

git clone https://github.com/haoyanfengya/springboot.git

cp springboot/shell/sql.sh ./
cp -r springboot/sql/ ./

cd springboot
mvn install
cd ..
cp springboot/target/springboot_demo-0.0.1-SNAPSHOT.war ./
rm -rf springboot

docker build -t springboot .
docker run -itd --name springboot -p 8081:8080 -e MYSQL_ROOT_PASSWORD=123456 springboot