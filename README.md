*This project has been created as part of the 42 curriculum by sumedai*

## Description
### Goal:

    This project aims to broaden your knowledge of system administration by using Docker.
    You will virtualize several Docker images, creating them in your new personal virtual
    machine.

### Overview:

    This project involves setting up a simple web application environment using Docker.
    The NGINX, WordPress, and MariaDB services are built from Dockerfiles, while networks and volumes are managed through a docker-compose.yml file.

## Project Description
* Virtaul Machines vs Docker

Virtual Machines virtualize an entire operating system, including the guest OS and its kernel. This provides strong isolation but requires more system resources and longer startup times.

Docker uses containerization, where containers share the host operating system kernel. As a result, containers are lightweight, start quickly, and consume fewer resources than virtual machines.

Advantages of Docker:

- Faster startup and lower resource usage compared to virtual machines
- Consistent environments across different machines
- Easier application deployment and management
- Developers can quickly set up and run applications anywhere Docker is available, reducing - environment differences and improving development efficiency


* Secrets vs Environent Variables

Secrets are a mechanism for securely managing sensitive information such as passwords and API keys, and are commonly used in Docker Swarm and Kubernetes. On the other hand, Environment Variables can also store data used by systems and applications, but they are not recommended for handling sensitive information.

The reasons are as follows:
- Environment variables are implicitly accessible by processes, making it difficult to track where and how they are used.
- Applications may expose environment variables through debugging or logging.
- Environment variables are automatically inherited by child processes.
- When an application crashes, environment variables may be written to log files in plain text.
- Developers may fail to recognize that sensitive information is stored in environment variables and accidentally expose it.

Therefore, using Secrets is considered safer than Environment Variables in production environments.
* Docker Network vs Host Network

Docker networking is a mechanism that enables communication between containers and external services.
- Automatically manages DNS resolution, routing, and IP address allocation
- Allows containers to communicate without manual network configuration

Host Network is a network mode in which a container shares the host machine’s network stack directly.
- Uses the host’s network interfaces instead of having its own isolated network namespace
- Does not require NAT or port mapping
- Reduces networking overhead
- Provides weaker network isolation compared to bridge networks
* Docker Volumes vs Bind Mounts

Docker Volume is a mechanism for sharing data between containers and the host filesystem.
- The storage location is managed automatically by Docker Engine
- Commonly used for persistent data such as databases
Bind Mount is a mechanism for sharing files and directories between containers and the host filesystem.
- The storage location is specified manually by the user
- Commonly used for development environments and configuration sharing

## Instructions

### Requirements

- Docker
- Docker Compose
- Linux Virtual Machine

### Installation

Clone the repository and move to the project directory.

```bash
git clone <repository_url>
cd inception
```

<!-- ### Build and Run

```bash
make build
```

or

```bash
make up
``` -->
### Build

### Build all Docker images.

```bash
make build
```

### Run

### Start all containers.

make up
Build and Run

To rebuild images and start containers:

make build
make up

### Stop Containers

```bash
make stop
```

### Down Containers

```bash
make down
```

### Start Containers

```bash
make start
```

### Show Running Containers

```bash
make ps
```
## Resources
    https://make.wordpress.org/cli/handbook/guides/installing/
    https://nginx.org/en/docs/
    https://ja.wordpress.org/support/article/how-to-install-wordpress/
    https://docs.docker.com/reference/
    https://mariadb.com/docs
### AI Usage

AI tools were used during the development of this project to support learning and research. Specifically, they were used for:

Looking up the meaning of technical terms related to Docker, NGINX, WordPress, MariaDB, and Linux system administration.
Checking command usage, syntax, and configuration examples.
Finding official documentation and reference materials.
Comparing different technologies and concepts to improve understanding.

All implementation decisions, configuration files, and source code were reviewed, tested, and validated by the author.
