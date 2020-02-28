# Specific OS distribution to utilize as base image
ARG OS_VERSION=centos:7

FROM $OS_VERSION

# Install/build application binaries
RUN mkdir /entrypoint.d
COPY entrypoints/default-entrypoint.sh  /entrypoint.d

# set ENTRYPOINT
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

# set (default) CMD
