FROM alpine:latest

RUN apk update
RUN apk add --no-cache \
    grep \
    sed \
    gawk \
    coreutils \
    mandoc \
    man-pages \
    bash
RUN rm -rf /var/cache/apk/*

CMD ["/bin/bash"]

