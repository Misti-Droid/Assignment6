FROM alpine:latest AS builder
RUN echo $((1 + RANDOM % 100)) > /tmp/number.txt


FROM fedora:latest AS final 
COPY --from=builder /tmp/number.txt /number.txt

CMD ["cat", "/sample.txt"]
