FROM golang:1.8

WORKDIR /go/src/app
COPY . .

RUN go-wrapper download golang.org/x/tools/cmd/present    # "go get -d -v ./..."
RUN go-wrapper install golang.org/x/tools/cmd/present     # "go install -v ./..."


CMD ["present", "-play=false", "-http=0.0.0.0:3999"] # ["app"]

# Document that the service listens on port 3999.
EXPOSE 3999
