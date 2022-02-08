FROM mambaorg/micromamba:0.21.0
ARG NEW_MAMBA_USER_ID=1042
ARG NEW_MAMBA_GROUP_ID=1043
USER root
RUN usermod "-u ${NEW_MAMBA_USER_ID}" "${MAMBA_USER}" && \
    groupmod "-g ${NEW_MAMBA_GROUP_ID}" "${MAMBA_USER}" && \
    :
USER $MAMBA_USER
COPY --chown=${NEW_MAMBA_USER_ID}:${NEW_MAMBA_GROUP_ID} env_cuda113.yml /tmp/env.yaml
RUN micromamba install -y -f /tmp/env.yaml && \
    micromamba clean --all --yes
