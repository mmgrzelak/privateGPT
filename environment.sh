#!/bin/bash
conda create -n gpt_gpu python=3.11
conda activate gpt_gpu
conda install -c "nvidia/label/cuda-11.6.0" cuda-toolkit
export LLAMA_CUBLAS=1
CMAKE_ARGS="-DLLAMA_CUBLAS=on" FORCE_CMAKE=1 pip install --no-cache-dir llama-cpp-python
pip install -r requirements.txt
