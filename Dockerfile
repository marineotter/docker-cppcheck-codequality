FROM python:3.9.17-slim-bullseye

ARG CPPCHECK_CODEQUALITY_VERSION=1.3.1

RUN pip install --no-cache-dir cppcheck-codequality==${CPPCHECK_CODEQUALITY_VERSION}

WORKDIR /project

ENTRYPOINT ["/usr/local/bin/cppcheck-codequality"]