
FROM cimg/base:2022.02

RUN sudo apt-get update \
  && sudo apt-get install -y \
    awscli \
    gettext \
    npm \
  && sudo rm -rf /var/lib/apt/lists/*

COPY ./bin/deployables /usr/local/bin/deployables
