FROM golang:1.21-alpine

ENV GO111MODULE=off

ADD . /go/src/app

WORKDIR /go/src/app


RUN  go build -v -o /go/src/app/jenkins-app

ENTRYPOINT ["/go/src/app/jenkins-app"]

CMD ["./jenkins-app"]
