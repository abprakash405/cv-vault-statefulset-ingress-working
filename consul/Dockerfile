FROM ubuntu:16.04
RUN apt-get update && \
apt-get install unzip wget curl vim -y

WORKDIR /home/ubuntu/

ENV CONSUL_HTTP_ADDR http://localhost:8500

RUN wget https://releases.hashicorp.com/consul/1.5.3/consul_1.5.3_linux_amd64.zip
RUN unzip consul_1.5.3_linux_amd64.zip
RUN mv consul /usr/bin

RUN mkdir /etc/consul.d/
COPY ui.json /etc/consul.d/ui.json



ADD entrypoint.sh /home/ubuntu/

RUN chmod a+x /home/ubuntu/entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
