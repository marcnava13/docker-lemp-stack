## Docker LEMP STACK

Run Nginx, PHP-FPM, Mysql and MailDev using [Docker]

### Requirements
Install [Docker] and [Compose]

### Installation

First, in your project clone this repository as submodule:

```bash
$ git submodule add git@github.com:marcnava13/docker-lemp-stack.git [name_folder]
```

Enter folder inside your repository cloned, create and configure .env file

```bash
cd [name_folder]
cp env-sample .env
```

Indicate the path where your source code is located. Assign a value to the **APP_PATH**, by default values is **../**

```bash
APP_PATH=YOUR_PATH
```

Then, run:

```bash
cd [name_folder]
$ docker-compose up -d
```

You are done, you can visit your application on the following URL: `http://localhost[::PORT]`

[Docker]:                      https://www.docker.io/
[Compose]:                     http://docs.docker.com/compose/install/
