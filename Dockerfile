FROM golang:alpine


ADD . /go/src/github.com/serviceMock
WORKDIR /go/src/github.com/serviceMock

RUN apk -U add make git bash wget curl gcc g++
RUN make
RUN apk del make git wget curl gcc g++

ENTRYPOINT serviceMock
