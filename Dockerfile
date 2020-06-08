FROM marvinbuss/aml-docker:latest

LABEL maintainer="azure/gh-aml"

RUN python -m pip install --upgrade pip
RUN python -m pip install --user azure-cli

COPY /code /code
ENTRYPOINT ["/code/entrypoint.sh"]