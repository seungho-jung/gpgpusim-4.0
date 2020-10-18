#!/bin/bash
# ******************************************
#	Scripts for installing GPGPU-Sim on Linux
#	 by Seungho Jung
# ******************************************
# This script for automating the installation process of GPGPU-Sim.
# The installation process is tested on Linux Mint 17.3 64-bits (based on Ubuntu 14.04 LTS)

# -------------------------------------------------
# Installing dependent libraries
# -------------------------------------------------
echo " -------------------------------------------------- "
echo " Installing required libraries"
echo " -------------------------------------------------- "
sudo apt-get install libxi-dev libxmu-dev freeglut3-dev
sudo apt-get install libcuda1-346 libcudart5.5

# -------------------------------------------------
# Installing CUDA Toolkit and CUDA SDK
# -------------------------------------------------
# GPGPU-Sim 4.0 supports up to 4.2 ~ 9.0, 9.1, 10, and 11 version of CUDA SDK
echo " -------------------------------------------------- "
echo " Downloadiing CUDA Toolkit and SDK"
echo " -------------------------------------------------- "

sudo dpkg -i cuda-repo-ubuntu1404_10.0.130-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda

echo " -------------------------------------------------- "
echo " Installing apps for GPGPU-Sim"
echo " -------------------------------------------------- "
sudo apt-get install build-essential xutils-dev bison zlib1g-dev flex libglu1-mesa-dev
echo " -------------------------------------------------- "
echo " Installing apps for doxygen"
echo " -------------------------------------------------- "
sudo apt-get install doxygen graphviz
echo " -------------------------------------------------- "
echo " Installing apps for AerialVision"
echo " -------------------------------------------------- "
sudo apt-get install python-pmw python-ply python-numpy libpng12-dev python-matplotlib

# ------------------------------------------------
# Before compiling GPGPU-Sim
# ------------------------------------------------
echo ""
echo " ==========================================================="
echo " Source setup_gpgpusim"
echo " ==========================================================="
echo ""
echo " Then, make!!!"
