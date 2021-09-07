FROM alpine:3.9

RUN apk add --no-cache curl tar openssl sudo bash jq

RUN apk --update --no-cache add postgresql-client postgresql

ENV AZURE_CLI_VERSION 2.0.60
RUN apk add py-pip && \
    apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev make

RUN pip --no-cache-dir install azure-cli==${AZURE_CLI_VERSION}