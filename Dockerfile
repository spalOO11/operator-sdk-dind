FROM docker:20.10.7

ARG OPERATOR_VERSION=v0.19.4

# install required apk packages
RUN  apk upgrade --available && apk add curl python3 \
     python3-dev py-pip \
     build-base libffi-dev \
     openssl-dev git

# install operator sdk
RUN curl -LO https://github.com/operator-framework/operator-sdk/releases/download/${OPERATOR_VERSION}/operator-sdk-${OPERATOR_VERSION}-x86_64-linux-gnu \
    && mv operator-sdk-${OPERATOR_VERSION}-x86_64-linux-gnu operator-sdk \
    && chmod +x operator-sdk && mv operator-sdk /usr/local/bin/

# install ansible
RUN  pip3 install cryptography==3.1.1 \
     && pip3 install ansible
