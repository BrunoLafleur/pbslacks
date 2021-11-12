#!/bin/sh
#export PYTHONPATH=/usr/share/blender/2.83.8/python/lib64/python3.9
export LD_LIBRARY_PATH=/usr/lib64/opencollada${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
export PATH=/usr/lib64/nvidia-bumblebee/cuda/bin${PATH:+:$PATH}
exec blender.bin "$@"
