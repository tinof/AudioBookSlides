@echo off
set CUDA_LAUNCH_BLOCKING=0
set TF_FORCE_GPU_ALLOW_GROWTH=true
set TRT_ENGINE_CACHE_PATH=%CD%\trt_cache
python abs.py %* 