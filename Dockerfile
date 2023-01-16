FROM golang:1.19.5-alpine

ENV APP_PATH=/go/src/github.com/boiler-plate
RUN apk update && apk add git
WORKDIR $APP_PATH
ADD . $APP_PATH
RUN go install golang.org/x/tools/cmd/goimports@latest
