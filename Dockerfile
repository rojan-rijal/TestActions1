# Container image that runs your code
FROM ubuntu:14.04

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY ./ /github/workspace/codes

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
