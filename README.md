Microservice example [![Build Status](https://travis-ci.org/reivaj05/linuxeros_example.svg?branch=master)](https://travis-ci.org/reivaj05/linuxeros_example)
===================

----------

Developer setup
-------------

 - Clone the [repo](https://github.com/reivaj05/linuxeros_example)
 - cd into the repo
 - Install  [go](https://golang.org/doc/install) 
 - Install [glide](https://github.com/Masterminds/glide) or run:

```
chmod +x scripts/*.sh
scripts/deps.sh
```

 - go build
 - Run the server:

```
./serviceMock
```

 - Visit [localhost:8000/[id]](http://localhost:8000) with different HTTP methods

----------

Docker setup
-------------

 - Instal [docker](https://www.docker.com/)
 - Run docker-compose up
 - Visit [localhost:8000/[id]](http://localhost:8000) with different HTTP methods
	
