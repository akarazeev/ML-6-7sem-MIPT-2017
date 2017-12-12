tar -xvf cudnn-7.5-linux-x64-v5.1.tar
cd cuda
sudo cp include/cudnn.h /usr/local/cuda-7.5/include/
sudo cp lib64/libcudnn.so /usr/local/cuda-7.5/lib64/
sudo cp lib64/libcudnn.so.5 /usr/local/cuda-7.5/lib64/
sudo cp lib64/libcudnn.so.5.1.10 /usr/local/cuda-7.5/lib64/
sudo cp lib64/libcudnn_static.a /usr/local/cuda-7.5/lib64/
cd ~

~/anaconda2/bin/pip install --upgrade https://github.com/Theano/Theano/archive/master.zip
~/anaconda2/bin/pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip

printf "[global]\nfloatX = float32\ndevice = cuda0\n\n[lib]\ncnmem = 0.7" > ~/.theanorc

wget https://cmake.org/files/v3.8/cmake-3.8.0.tar.gz
tar -zxvf cmake-3.8.0.tar.gz
cd cmake-3.8.0
./bootstrap
gmake
cd ~

git clone https://github.com/Theano/libgpuarray.git
cd libgpuarray
mkdir Build
cd Build
~/cmake-3.8.0/bin/cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local
make
sudo make install
cd ..
~/anaconda2/bin/python setup.py build
~/anaconda2/bin/python setup.py install
ln -s /usr/local/lib/libgpuarray.so.2 ~/anaconda2/lib/libgpuarray.so.2

echo "Done"
