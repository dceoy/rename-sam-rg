replace-sam-read-group
======================

Command to atomically replace Read-Group tags in a BAM or CRAM file

[![CI to Docker Hub](https://github.com/dceoy/replace-sam-read-group/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/dceoy/replace-sam-read-group/actions/workflows/docker-publish.yml)

Installation
------------

1.  Install Samtools coomand.

2.  Copy `replace-sam-read-group`.

    ```sh
    $ git clone https://github.com/dceoy/replace-sam-read-group.git
    $ cp -a replace-sam-read-group/replace-sam-read-group /path/to/bin
    ```

Docker image
------------

The image is available at [Docker Hub](https://hub.docker.com/r/dceoy/replace-sam-read-group/).

```sh
$ docker image pull dceoy/replace-sam-read-group
```

Usage
-----

- Create a BAM file with a new read-group sample name (SM).

  ```sh
  $ replace-sam-read-group \
      --sm='new-sample-name' \
      ./input.bam \
      ./output.bam
  ```

- Create a renamed CRAM file in AWS (Uploading to S3 requires AWS CLI).

  ```sh
  $ replace-sam-read-group \
      --sm='new-sample-name' \
      s3://sample-bam-bucket/input.cram \
      s3://sample-bam-bucket/output.cram
  ```

Run `replace-sam-read-group --help` for more information.
