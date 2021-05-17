FROM golang:1-alpine AS builder

RUN CGO_ENABLED=0 go get github.com/genuinetools/reg@master

FROM alpine:3.13

COPY --from=builder /go/bin/reg /usr/local/bin/reg

ENTRYPOINT ["/usr/local/bin/reg"]
