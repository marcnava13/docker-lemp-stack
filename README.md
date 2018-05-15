## Docker LEMP STACK

Run Nginx, PHP-FPM, Mysql and MailDev using [Docker]

### Requirements
Install [Docker] and [Compose]

### Installation

First, clone this repository:

```bash
$ git clone git@github.com:marcnava13/docker-lemp-stack.git
```

Enter folder inside your repository cloned, create and configure .env file

```bash
cp env-sample .env
```

Then, run:

```bash
$ docker-compose up -d
```

You are done, you can visit your application on the following URL: `http://localhost`

[Docker]:                      https://www.docker.io/
[Compose]:                     http://docs.docker.com/compose/install/
