FROM openjdk:8-jre

LABEL maintainer="TridentSDK Team"
LABEL version="0.0.1"

### Direct link to server artifact
ARG ARTIFACT_LINK="https://oss.sonatype.org/service/local/artifact/maven/redirect?r=snapshots&g=net.tridentsdk&a=trident&v=0.5-SNAPSHOT&e=jar"

### Create directories
RUN mkdir -p /opt/tridentsdk

### Download artifact
WORKDIR /opt/tridentsdk
RUN curl -L -o tridentsdk.jar "$ARTIFACT_LINK"

### Expose ports
EXPOSE 25565

### Set entrypoint
ADD entrypoint.sh /opt/tridentsdk/entrypoint.sh
ENTRYPOINT ["/bin/sh", "entrypoint.sh"]

### Clear default command
CMD [""]