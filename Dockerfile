FROM jenkins/inbound-agent:latest-jdk21
USER root
COPY --from=docker:27-cli /usr/local/bin/docker /usr/local/bin/docker
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
