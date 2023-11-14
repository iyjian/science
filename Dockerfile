FROM ubuntu:22.04

RUN apt update && \
    apt install -y openssh-client telnet && \
    mkdir -p /root/.ssh && \
    chmod 700 /root/.ssh && \
    echo "Host *" >> ~/.ssh/config && \
    echo "  AddressFamily inet" >> ~/.ssh/config

COPY entry.sh /entry.sh

CMD /entry.sh
