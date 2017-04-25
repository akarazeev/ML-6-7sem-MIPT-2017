wget https://repo.continuum.io/archive/Anaconda2-4.3.1-Linux-x86_64.sh

bash Anaconda2-4.3.1-Linux-x86_64.sh

printf '\nexport PATH=\"/usr/local/cuda-7.5/bin:$PATH\"\nexport LIBRARY_PATH=\"/usr/local/cuda-7.5/lib64:$LIBRARY_PATH\"\nexport LD_LIBRARY_PATH=\"/usr/local/cuda-7.5/lib64:$LD_LIBRARY_PATH\"' >> ~/.bashrc

echo “- - - >> Now download cuDNN - cudnn-7.5-linux-x64-v5.1.tar“
