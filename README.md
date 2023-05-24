# Jupyter Azure

This project provides a Docker environment based on JupyterLab for working with Azure services and libraries such as `azure-ai-ml`, `azureml`, `azureml-core`, and `azure-identity`.

## Prerequisites

- Docker: Ensure that Docker is installed and running on your system.

## Build the Docker Image

To build the Docker image, execute the following command:

```bash
docker build -t jupyter-azure:latest .
```

This command will build the image using the provided Dockerfile.

## Run the Docker Container

To run the Docker container, execute the following command:

```bash
docker run -p 8888:8888 -v "$PWD:/app" jupyter-azure
```

This command will start the container and map port 8888 in the container to port 8888 on the host machine. It will also mount the current directory (`$PWD`) to the `/app` directory inside the container, allowing you to access and modify your notebooks from the host system.

## Access JupyterLab

Once the container is running, you can access JupyterLab by opening the following URL in your web browser:

```
http://localhost:8888
```

## Test Azure Imports

To test the Azure imports, open the `test-imports.ipynb` notebook provided in this repository. The notebook includes code to import the required Azure libraries and make use of the Azure ML services.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for more information.

## Acknowledgments
This document was created using [ChatGPT](https://github.com/openai/chatgpt) by OpenAI.
The gitignore file was copied over from [jupyter/notebook](https://github.com/jupyter/notebook/blob/main/.gitignore)

---