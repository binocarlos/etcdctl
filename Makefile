.PHONY: install

install:
	curl -L https://github.com/coreos/etcd/releases/download/v2.0.11/etcd-v2.0.11-linux-amd64.tar.gz -o /tmp/etcd-v2.0.11-linux-amd64.tar.gz
	cd /tmp && gzip -dc etcd-v2.0.11-linux-amd64.tar.gz | tar -xof -
	cp -f /tmp/etcd-v2.0.11-linux-amd64/etcdctl /usr/local/bin
	rm -rf /tmp/etcd-v2.0.11-linux-amd64.tar.gz