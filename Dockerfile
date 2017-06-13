FROM golang:1.8-alpine

RUN apk add --no-cache git \
    && go get -u github.com/golang/dep/cmd/dep

ENTRYPOINT ["dep"]