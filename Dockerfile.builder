FROM golang:1.14
#switch to our app directory
RUN mkdir -p /go/src/helloworld  
WORKDIR /go/src/helloworld
#copy the source files
COPY main.go /go/src/helloworld
#disable crosscompiling 
ENV CGO_ENABLED=0
#compile linux only
ENV GOOS=linux
#build the binary with debug information removed
RUN go build  -ldflags '-w -s' -a -installsuffix cgo -o helloworld