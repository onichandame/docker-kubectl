from alpine:latest
run apk update
run apk add curl
run curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
run install kubectl /usr/bin/
run rm kubectl
entrypoint ["kubectl"]
cmd ["cluster-info"]
