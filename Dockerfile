FROM jupyter/datascience-notebook

USER root

RUN apt-get update

RUN pip install --no-cache-dir azure-ai-ml azureml azureml-core azure-identity

RUN pip install --no-cache-dir botbuilder-core asyncio aiohttp cookiecutter==1.7.0

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN pip install azure-mgmt-cognitiveservices azure-cognitiveservices-language-luis

ARG AZ_UNAME
ARG AZ_PWD

ENV AZ_UNAME=$AZ_UNAME
ENV AZ_PWD=$AZ_PWD

WORKDIR /app

CMD ["/bin/bash", "-c", "az login -u $AZ_UNAME -p $AZ_PWD && jupyter lab --ip=0.0.0.0 --no-browser --allow-root"]
