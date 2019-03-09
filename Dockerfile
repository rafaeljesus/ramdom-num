FROM golang as builder
MAINTAINER Rafael Jesus <rafaelljesus86@gmail.com>
WORKDIR /go/src/github.com/rafaeljesus/random-num
COPY . .
RUN make build

FROM scratch
COPY --from=builder /go/src/github.com/rafaeljesus/random-num /
CMD ["/dist/random-num"]
