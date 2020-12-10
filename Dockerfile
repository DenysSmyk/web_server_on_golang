FROM golang:1.10
WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...
EXPOSE 8080:8093
CMD ["1"]
