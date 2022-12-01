# syntax=docker/dockerfile:1.4
FROM scratch
ARG TARGET
COPY $TARGET /never
ENTRYPOINT ["/never"]
