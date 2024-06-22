FROM ghcr.io/actions/actions-runner:latest

USER root
RUN apt update \
    && apt install -y \
    --no-install-recommends \
        git  \
        unzip \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

USER runner