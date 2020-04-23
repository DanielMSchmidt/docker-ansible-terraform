FROM alpine:3.11.6
ENV TERRAFORM_VERSION 0.12.24
ENV ANSIBLE_VERSION 2.9.7-r0

RUN apk --update --no-cache add curl bash ansible=${ANSIBLE_VERSION} libc6-compat git openssh-client python py-pip python3 && \
    cd /usr/local/bin && \
    curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

