# Facekom task

## Prerequisites before you run the application
Clone this repository
```
$ git clone https://github.com/zoltantamas76/facekom.git
$ cd facekom
```

You need to copy *chained certificate* and *key* files to **certs** directory such as the following example.
```
$ cp ~/cert.chained.crt certs
$ cp ~/key.pem certs
```
Both the certificate and the key files need to be PEM formatted.

## Install Docker service and run the application
```
$ ./docker-bootstrap.sh

$ docker compose up -d
```
