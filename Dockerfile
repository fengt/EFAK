FROM openjdk:8-jdk-alpine
MAINTAINER "Orbforce fengtao@orbforce.com"

COPY efak-web/target/archive-tmp/efak-web-3.0.2/ /opt/kafka-eagle/

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

RUN mkdir -p /hadoop/kafka-eagle/db

ENV KE_HOME=/opt/kafka-eagle

ENV PATH=$PATH:$KE_HOME/bin

EXPOSE 8048

WORKDIR /opt/kafka-eagle

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]