#! /bin/bash
mvn clean package -DskipTests
echo "==============uncompress==============="
tar -zxf efak-web/target/efak-web-3.0.2-bin.tar.gz -C efak-web/target/archive-tmp
echo "===========docker building============="
docker build -t fhalcyon/efak:3.0.2 .
echo "==============DONE====================="