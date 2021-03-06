FROM golang:1.15

RUN go get -u github.com/swaggo/swag/cmd/swag
RUN go get github.com/beego/bee

EXPOSE 80

# Copy the source code from current directory to /go/src in container
# Place the Dockerfile into source code directory and build Docker image
RUN mkdir -p /go/src/app
COPY . /go/src/app
WORKDIR /go/src/app

# Launch Beego when the container is created
CMD bee run
