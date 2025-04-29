# How to run
```shell
docker run --rm -it --init \
       -v /path/to/your/local/scss/files/:/sass \
       -v /path/to/output/folder/:/css \
       ghcr.io/sgoettsch/docker-scss-builder:latest
```

The folder mounted to `/sass` folder will be encoded to the folder mounted to `css`.