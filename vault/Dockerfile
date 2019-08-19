FROM ubuntu:16.04
RUN apt-get update && \
apt-get install unzip wget curl vim -y

WORKDIR /home/ubuntu/

#ENV VAULT_ADDR http://localhost:8200
#ENV api_addr "http://localhost:8200"
#ENV cluster_addr "http://localhost:8201"
#ENV CONSUL_HTTP_ADDR http://localhost:8500

RUN wget https://releases.hashicorp.com/vault/1.2.0/vault_1.2.0_linux_amd64.zip
RUN unzip vault_1.2.0_linux_amd64.zip
RUN mv vault /usr/bin

RUN mkdir /etc/vault



COPY config.hcl /etc/vault/config.hcl

CMD /usr/bin/vault server -config=/etc/vault/config.hcl
