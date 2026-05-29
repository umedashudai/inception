## Services Overview
This project provides a simple web application environment using Docker.
The Serevices is composed by the followed containers:
WordPress:
A web application that allows users to quickly and easily create websites.
NGINX:
Acts as a reverse proxy server. Since PHP-FPM cannot communicate with clients through HTTP/HTTPS directly and only supports FastCGI, NGINX handles client HTTPS requests and forwards PHP requests to PHP-FPM.
MariaDB:
A relational database used to store and manage WordPress website data such as users, posts, and settings.

## Usage

### start the project
    ### Start the Project

```bash
make or make up
```
### end the project
```bash
make stop
```

### Access the website

Website:
https://sumedai

WordPress Admin Panel:
https://sumedai/wp-admin

### Locate and manage credentials

Database and WordPress credentials are managed through environment variables.

### Check that the services are running correctly

```bash
make ps
```

<!-- USER_DOC.md — User documentation This file must explain, in clear and simple
terms, how an end user or administrator can:
◦ Understand what services are provided by the stack.
◦ Start and stop the project.
◦ Access the website and the administration panel.
◦ Locate and manage credentials.
◦ Check that the services are running correctly. -->