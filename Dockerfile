FROM alpine:latest

RUN apk add --no-cache curl

CMD ["echo", "hello from arc"]
