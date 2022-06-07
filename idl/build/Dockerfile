FROM golang:1.17-alpine3.15

RUN go install \
  github.com/bufbuild/buf/cmd/buf@v1.0.0-rc11 \
  github.com/bufbuild/buf/cmd/protoc-gen-buf-breaking@v1.0.0-rc11 \
  github.com/bufbuild/buf/cmd/protoc-gen-buf-lint@v1.0.0-rc11


RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.26
RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.1

RUN go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway@v2.10.3
RUN go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger@v2.10.3
