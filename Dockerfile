ARG base_version="ubuntu:21.04"
ARG goss_version=v0.3.16

# ******* Stage: base ******* #
FROM ${base_version} as base

RUN apt update && apt install --yes --no-install-recommends \
    apache2 \
    ca-certificates \
    curl \
    tini \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /docker-entrypoint.d
COPY entrypoints /docker-entrypoint.d
COPY scripts/entrypoint.sh /usr/local/bin/demo-entrypoint

WORKDIR /scripts
COPY scripts /scripts

ENV DEMO_USER=world

ENTRYPOINT ["demo-entrypoint"]

# ******* Stage: testing ******* #
FROM base as test

RUN curl -fsSL https://goss.rocks/install | GOSS_VER=${goss_version} GOSS_DST=/usr/local/bin sh

WORKDIR /test
COPY test /test

CMD ["goss", "--gossfile", "/test/goss.yaml", "validate"]

# ******* Stage: main ******* #
FROM base

CMD ["curl", "demo.01labs.net"]
