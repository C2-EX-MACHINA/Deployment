# Deployment
Deployment repo
Deploying a Docker container from a Dockerfile involves a few steps:

1. **Building the Docker Image**: This step creates a Docker image from your Dockerfile. This image contains all the layers, software, and configurations specified in the Dockerfile.

2. **Running the Docker Container**: After building the image, you can run it to create a container. This is the actual running instance of your Docker image.


Here's how you can do it:

### 1. Build the Docker Image:

Navigate to the directory containing the Dockerfile and run:

```bash
docker build -t c2exmachina .
```


### 2. Run the Docker Container:

After successfully building the image, you can run a container from it using:

```bash
docker run -d c2exmachina
```

Depending on your Dockerfile and the application inside it, you might want to map ports, bind-mount volumes, or set environment variables. For example, if your Dockerfile exposes port 80, you could run:

```bash
docker run -d -p 8080:80 c2exmachina
```

This would map port 8080 on the host to port 80 on the container.

now you rock-it!
