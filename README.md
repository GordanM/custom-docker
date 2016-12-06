## Custom Docker Image

Install a custom docker image with a [custom-zsh](https://github.com/GordanM/custom-zsh) configured. 

### Prerequisites

* [Docker](https://www.docker.com/)

### Install

```
$ docker build -t gdocker .
```

To remove the docker image extract the docker IMAGE ID and remove it by using that id:

```
$ docker images | grep gdocker
$ docker rmi <gdocker-id>
```

### Run

Navigate to the folder you would like to have access to in the docker context and execute: 

```
$ docker run -ti --volume=$PWD:$PWD gdocker
```

### References

* https://www.docker.com/
* https://docs.docker.com/engine/reference/commandline/cli/

## License

This repository is released under the [MIT license](LICENSE.txt).
