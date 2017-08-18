## Docker LEMP STACK

Run Nginx, PHP 7 and Mysql using [Docker]

### Requirements
Install [Docker] and [Compose]

### Installation

First, clone this repository:

```bash
$ git clone git@github.com:marcnava13/docker-lemp-stack.git
```

Change the password for the database from .env file that you'll find in the root project:

```bash
MYSQL_ROOT_PASSWORD=supersecret
```

Then, run:

```bash
$ docker-compose up
```

You are done, you can visit your application on the following URL: `http://localhost`

[Docker]:                      https://www.docker.io/
[Compose]:                     http://docs.docker.com/compose/install/
