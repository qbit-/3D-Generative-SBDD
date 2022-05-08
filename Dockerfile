ARG BASE_IMAGE=qbit271/micromamba-docker-cuda:latest
FROM $BASE_IMAGE

ARG ENV_FILE=env_cuda115.yml
COPY --chown=mambauser:mambauser $ENV_FILE /tmp/env.yaml
RUN micromamba install -y -f /tmp/env.yaml && \
    micromamba clean --all --yes
