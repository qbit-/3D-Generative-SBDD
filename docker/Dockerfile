FROM qbit271/micromamba-cuda:0.21.0

COPY --chown=mambauser:mambauser env_cuda113.yml /tmp/env.yaml
RUN micromamba install -y -f /tmp/env.yaml && \
    micromamba clean --all --yes
