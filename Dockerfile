FROM ubuntu:latest

USER root
RUN apt-get install wget
RUN “wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add –“;
RUN “echo "deb https://artifacts.elastic.co/packages/oss-7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list”;
RUN "apt-get install apt-transport-https"
RUN "apt-get update && apt-get install logstash"
RUN "systemctl start logstash.service"
LABEL maintainer = "abhishek.ewb@gmail.com"
