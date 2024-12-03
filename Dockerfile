FROM alpine:latest AS builder
RUN echo $((1 + RANDOM % 100)) > /tmp/sample.txt

FROM fedora:latest AS final 
COPY --from=builder /tmp/sample.txt /sample.txt

CMD ["cat", "/sample.txt"]