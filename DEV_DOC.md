## Prerequisites
- Linux environment
- Docker Engine
- Docker Compose
- Make
## Environment Setup
### Configuration Files

- `docker-compose.yml`
  - Defines services, networks, and volumes

- `/etc/nginx/sites-available/default`
  - Configures the NGINX virtual host, SSL, and reverse proxy settings

- `50-server.cnf`
  - Configures MariaDB server settings

- `wp-config.php`
  - Stores WordPress database configuration and authentication keys

- `www.conf`
  - Configures PHP-FPM settings
### Secrets and Environment Variables

This project uses a `.env` file to manage configuration values such as domain name, database credentials, WordPress settings, and SSL certificate paths.

The `.env` file is loaded by Docker Compose and used by each service during container startup.

Sensitive values such as database passwords, WordPress admin credentials, and authentication keys should not be hardcoded directly in Dockerfiles or configuration files.

In this project, environment variables are used for simplicity. However, in a real production environment, sensitive information should be managed with a more secure mechanism such as Docker Secrets or another secret management tool.
## Build and Launch the Project

This project is built and launched using the Makefile and Docker Compose.
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
## Container and Volume Management

### View container logs
```bash
docker compose logs <container_name>
```

### List Docker containers
```bash
docker compose container ls
```

### List Docker volumes
```bash
docker volume ls
```

### Inspect a volume
```bash
docker compose volume inspect <volume_name>
```

## Volumes and Data Persistence

Project data persists because Docker volumes are mounted to directories on the host machine using bind mounts through `driver_opts`.

As a result, WordPress and MariaDB data remain stored on the host filesystem even if containers are removed or restarted.

<!-- DEV_DOC.md — Developer documentation This file must describe how a developer
can:
◦ Set up the environment from scratch (prerequisites, configuration files, secrets).
◦ Build and launch the project using the Makefile and Docker Compose.
◦ Use relevant commands to manage the containers and volumes.
◦ Identify where the project data is stored and how it persists. -->