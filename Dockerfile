FROM golang:1.14-alpine AS build
#WORKDIR /go/src/app
#COPY . .

#RUN go get -d -v ./
#RUN go install -v ./
#RUN ls -la
#EXPOSE 8080
#CMD ["1.go"]
WORKDIR /src/
COPY 1.go go.* /src/
RUN CGO_ENABLED=0 go build -o /bin/demo

FROM scratch
COPY --from=build /bin/demo /bin/demo
ENTRYPOINT ["/bin/demo"]
