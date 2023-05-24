FROM jupyter/base-notebook

USER root

RUN pip install --no-cache-dir azure-ai-ml azureml azureml-core azure-identity

WORKDIR /app

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]

