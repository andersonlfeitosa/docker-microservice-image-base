FROM openjdk:15-slim-buster
RUN apt-get update && \
    apt-get install -y curl wget vim git jq bash bash-completion tcpdump && \
    apt-get autoclean && \
    apt-get autoremove && \
    mkdir -p /opt/microservices && \
    useradd -ms /bin/bash usrjava && \
    chown -R usrjava /opt/
WORKDIR /opt/microservices
EXPOSE 8080
USER usrjava
