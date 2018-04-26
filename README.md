S3FS in Docker
==============

This repository contains a Docker image that allows you to mount an S3 bucket.

# Requirements

* Docker 17.04 ;
* docker-compose ;

# Usage

Build the image :

```
./build.sh <AWS_ACCESS_ID> <AWS_ACCESS_KEY>
```

Launch it :

```
./run.sh <BUCKET_NAME>
```

The default mount point is `/mnt/bucket`
