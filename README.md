replace-sam-read-group
======================

Tiny Command to Replace Read-Group Attributes of a SAM file

[![CI to Docker Hub](https://github.com/dceoy/replace-sam-read-group/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/dceoy/replace-sam-read-group/actions/workflows/docker-publish.yml)

Installation
------------

```sh
$ git clone https://github.com/dceoy/replace-sam-read-group.git
$ cp -a replace-sam-read-group/replace-sam-read-group /path/to/bin  # a path in ${PATH}
```

Usage
-----

Create a SAM file with a renamed single read-group.

```sh
$ replace-sam-read-group \
    --sm='new-sample-name' \
    input.bam \
    output.bam
```

Run `replace-sam-read-group --help` for more information.
