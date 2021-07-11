FROM golang:1.16-alpine3.12 as builder
WORKDIR /src
COPY . .
RUN go build -o main

FROM alpine:3.12
WORKDIR /app
COPY --from=builder /src/main .
ENTRYPOINT ["/app", "main"]