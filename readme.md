This project has been created as part of the 42 curriculum by sumedai.

## Description
### Goal:

    This project aims to broaden your knowledge of system administration by using Docker.
    You will virtualize several Docker images, creating them in your new personal virtual
    machine.

### Overview:

    This project involves setting up a simple web application environment using Docker.
    The NGINX, WordPress, and MariaDB services are built from Dockerfiles, while networks and volumes are managed through a docker-compose.yml file.

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
##Resources
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