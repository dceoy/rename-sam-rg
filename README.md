replace-sam-read-group
======================

Tiny Command to Replace Read-Group Tags of a SAM file

[![CI to Docker Hub](https://github.com/dceoy/replace-sam-read-group/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/dceoy/replace-sam-read-group/actions/workflows/docker-publish.yml)

Installation
------------

1.  Install Samtools coomand.

2.  Copy `replace-sam-read-group`.

    ```sh
    $ git clone https://github.com/dceoy/replace-sam-read-group.git
    $ cp -a replace-sam-read-group/replace-sam-read-group /path/to/bin
    ```

Usage
-----

- Create a SAM file with a new read-group sample name (SM).

  ```sh
  $ replace-sam-read-group \
      --sm='new-sample-name' \
      ./input.bam \
      ./output.bam
  ```

- Create a SAM file with a new SM in AWS. (Uploading to S3 requires AWS CLI.)

  ```sh
  $ replace-sam-read-group \
      --sm='new-sample-name' \
      s3://sample-bam-bucket/input.bam \
      s3://sample-bam-bucket/output.bam
  ```

Run `replace-sam-read-group --help` for more information.
