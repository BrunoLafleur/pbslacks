#! /bin/sh

LD_LIBRARY_PATH=/usr/lib64/python2-libwebp:/usr/lib64/python2-mlt
export LD_LIBRARY_PATH

exec openshot "$@"
