## Docker LEMP STACK

Run Nginx, PHP-FPM, Mysql and MailDev using [Docker]

### Requirements
Install [Docker] and [Compose]

### Installation

First, in your project clone this repository as submodule:

```bash
$ git submodule add git@github.com:marcnava13/docker-lemp-stack.git
```

Enter folder inside your repository cloned, create and configure .env file

```bash
cp env-sample .env
```

Indicate the path where your source code is located. Assign a value to the **APP_CODE_PATH_HOST**, by default values is **../**

```bash
APP_CODE_PATH_HOST=YOUR_PATH
```

Then, run:

```bash
$ docker-compose up -d
```

You are done, you can visit your application on the following URL: `http://localhost`

[Docker]:                      https://www.docker.io/
[Compose]:                     http://docs.docker.com/compose/install/
