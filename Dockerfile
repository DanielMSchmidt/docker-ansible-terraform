FROM hashicorp/terraform:latest
ENV ANSIBLE_VERSION 2.9.7-r0

RUN apk --update --no-cache add curl bash ansible=${ANSIBLE_VERSION} libc6-compat git openssh openssh-client python py-pip python3

ENTRYPOINT [ "/bin/bash" ]