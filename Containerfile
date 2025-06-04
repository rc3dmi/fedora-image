# Allow build scripts to be referenced without being copied into the final image
FROM scratch AS ctx
COPY build_files /
COPY sys_files /sys_files

ARG FEDORA_VER

# Base Image
# FROM ghcr.io/ublue-os/silverblue-nvidia:$FEDORA_VER
FROM ghcr.io/ublue-os/silverblue-nvidia:41

RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    --mount=type=cache,dst=/var/cache \
    --mount=type=cache,dst=/var/log \
    --mount=type=tmpfs,dst=/tmp \
    /ctx/build.sh && \
    ostree container commit

### LINTING
## Verify final image and contents are correct.
RUN bootc container lint