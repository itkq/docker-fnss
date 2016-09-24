Docker image of https://github.com/fnss/fnss-vm

## Usage
```sh
$ git clone https://github.com/itkq/docker-fnss.git
$ cd docker-fnss
$ docker build -t fnss .
$ docker run -it --rm -v $(pwd):/var/python fnss python examples/datacenter.py
```

