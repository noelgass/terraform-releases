FROM mcr.microsoft.com/devcontainers/base:debian

ARG VERSION=latest
ARG TFLINT=latest
ARG TERRAGRUNT=latest
ARG INSTALLSENTINEL=false
ARG INSTALLTFSEC=false
ARG INSTALLTERRAFORMDOCS=false

ENV VERSION=$VERSION
ENV TFLINT=$TFLINT
ENV TERRAGRUNT=$TERRAGRUNT
ENV INSTALLSENTINEL=$INSTALLSENTINEL
ENV INSTALLTFSEC=$INSTALLTFSEC
ENV INSTALLTERRAFORMDOCS=$INSTALLTERRAFORMDOCS

COPY library-scripts/install.sh /tmp/library-scripts/
RUN apt-get update && \
    bash /tmp/library-scripts/install.sh && \
    rm -rf /var/lib/apt/lists/* /tmp/library-scripts/
