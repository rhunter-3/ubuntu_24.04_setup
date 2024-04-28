# BUILD R FROM SOURCE ON UBUNTU
# R-4.4.0

# Install Linux dependencies
# Make sure src repos are uncommented in /etc/apt/sources.list
# Ubuntu sources have moved to /etc/apt/sources.list.d/ubuntu.sources in 24.04
sudo apt-get build-dep r-base

# Download and extract source code
wget https://cran.r-project.org/src/base/R-4/R-4.4.0.tar.gz
tar -xzvf R-4.4.0.tar.gz
cd R-4.4.0

# Build R from source
./configure --prefix=/opt/R/$(cat VERSION) --enable-R-shlib --with-blas --with-lapack
make
sudo make install

# Clean up
rm ~/R-4.4.0.tar.gz
rm -rf R-4.4.0/
