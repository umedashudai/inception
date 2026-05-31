*This project has been created as part of the 42 curriculum by sumedai.*

## Description
### Goal:

    This project aims to broaden your knowledge of system administration by using Docker.
    You will virtualize several Docker images, creating them in your new personal virtual
    machine.

### Overview:

    This project involves setting up a simple web application environment using Docker.
    The NGINX, WordPress, and MariaDB services are built from Dockerfiles, while networks and volumes are managed through a docker-compose.yml file.

## Project Description
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

### Build and Run

```bash
make
```

or

```bash
make up
```

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

<!-- A “Description” section that clearly presents the project, including its goal and a
brief overview.
• An “Instructions” section containing any relevant information about compilation,
installation, and/or execution.
• A “Resources” section listing classic references related to the topic (documentation,
articles, tutorials, etc.), as well as a description of how AI was used —
specifying for which tasks and which parts of the project. -->