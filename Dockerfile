FROM dceoy/samtools:latest

ADD https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip /tmp/awscli.zip
ADD ./replace-sam-read-group /usr/local/bin/replace-sam-read-group

RUN set -e \
      && chmod +x /usr/local/bin/replace-sam-read-group

RUN set -e \
      && apt-get -y update \
      && apt-get -y dist-upgrade \
      && apt-get -y install --no-install-recommends --no-install-suggests \
        unzip \
      && apt-get -y autoremove \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*

RUN set -e \
      && cd /tmp \
      && unzip awscli.zip \
      && ./aws/install

ENTRYPOINT ["/usr/local/bin/replace-sam-read-group"]
