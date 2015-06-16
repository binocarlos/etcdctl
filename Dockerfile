FROM ubuntu:15.04

# Update package repository
RUN echo "deb http://archive.ubuntu.com/ubuntu vivid main universe multiverse" > /etc/apt/sources.list
RUN apt-get update -y && apt-get install -y curl

RUN curl -sL https://github.com/coreos/etcd/releases/download/v2.0.11/etcd-v2.0.11-linux-amd64.tar.gz -o /tmp/etcd-v2.0.11-linux-amd64.tar.gz
RUN cd /tmp && gzip -dc etcd-v2.0.11-linux-amd64.tar.gz | tar -xof -
RUN cp -f /tmp/etcd-v2.0.11-linux-amd64/etcdctl /usr/local/bin
RUN rm -rf /tmp/etcd-v2.0.11-linux-amd64.tar.gz
ENTRYPOINT ["/usr/local/bin/etcdctl"]