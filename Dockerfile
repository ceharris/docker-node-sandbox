FROM node:6.7
RUN apt-get update && \
    apt-get install -y sudo vim curl ca-certificates && \
    adduser --home /home/node --shell /bin/bash --gecos "Node Developer" \
        --disabled-password node
COPY node-sudo /etc/sudoers.d    
USER node
WORKDIR /home/node
CMD [ "/bin/bash" ]
