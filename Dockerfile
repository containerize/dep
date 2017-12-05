FROM golang:alpine

ENV DEP_VERSION 0.3.2

RUN apk add --no-cache git curl \
    && curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/v${DEP_VERSION}/dep-linux-amd64 \
    && chmod +x /usr/local/bin/dep

ENTRYPOINT ["dep"]