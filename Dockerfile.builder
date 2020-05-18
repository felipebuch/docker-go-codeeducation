FROM golang:1.14
RUN mkdir -p /go/src/helloworld  
WORKDIR /go/src/helloworld
COPY main.go /go/src/helloworld
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN go build  -ldflags '-w -s' -a -installsuffix cgo -o helloworld