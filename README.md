## Prerequisites
Clone this repository
```
$ git clone https://github.com/zoltantamas76/facekom.git
$ cd facekom
```

You need to copy your *chained certificate* and *key* files to **certs** directory such as the following example.
```
$ cp ~/cert.chained.crt certs
$ cp ~/key.pem certs
```
Both the certificate and key files have to be PEM formatted.

## Bootstrap Docker and start up NGINX container
This simple bootstrap script configures official Docker repository, installs necessary packages and sets stricter file permissions on *certs* directory and *key.pem* file. Docker compose just starts up the NGINX container (exposes ports, mounts volumes and sets capabilities).
```
$ ./docker-bootstrap.sh
$ docker compose up -d
```
