# BUILD R FROM SOURCE ON UBUNTU
# R-4.3.2

# Install Linux dependencies
# Make sure src repos are uncommented in /etc/apt/sources.list
sudo apt-get build-dep r-base

# Download and extract source code
wget https://cran.r-project.org/src/base/R-4/R-4.3.2.tar.gz
tar -xzvf R-4.3.2.tar.gz
cd R-4.3.2

# Build R from source
./configure --prefix=/opt/R/$(cat VERSION) --enable-R-shlib --with-blas --with-lapack
make
sudo make install
