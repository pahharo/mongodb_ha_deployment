FROM alpine:latest

# Install mongodb
RUN echo 'http://dl-3.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk upgrade --update
RUN apk add --no-cache mongodb

# Create volume
VOLUME ["/data/db"]

ADD mongos.conf /etc/mongos.conf

# Create DB and Collection
EXPOSE 27017
CMD ["mongos","--config","/etc/mongos.conf"]
