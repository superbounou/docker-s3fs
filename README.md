S3FS in Docker
==============

This repository provides an image to

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
