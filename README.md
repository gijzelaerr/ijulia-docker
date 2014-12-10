ijulia-docker
=============

A docker container containing an interactive IJulia notebook.

Clone this repo and run `make`.


You can also run it directly from the docker hub:

```
docker run -it -p 8888:8888 -v <your notebooks>:/notebooks:rw gijzelaerr/ijulia
```
