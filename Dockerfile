FROM alpine:latest

ENV TERRAFORM_VERSION 1.0.3

RUN apk update --no-cache \
    && apk add --no-cache \
          wget \
          unzip \
          curl \
    && wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \ 
     && unzip ./terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin/ \
    && rm -rf ./terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && mkdir terraform

COPY ./terraform /terraform
