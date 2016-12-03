install_python3 :
  apt-get install python3
  apt-get install python3-dev
  
install_pip3  :
  apt-get install python3-setuptools
  easy_install3 pip
  mv /usr/local/bin/pip /usr/local/bin/pip-3

install_autotools :
  apt-get install libtool pkg-config build-essential autoconf automake
  
install_libsodium :
# The Sodium crypto library (libsodium)
  git clone git://github.com/jedisct1/libsodium.git
  cd libsodium
  ./autogen.sh
  ./configure && make check
  make install
  ldconfig
  
install_zeromq  :
# Distributed Messaging
  wget http://download.zeromq.org/zeromq-4.1.4.tar.gz
  tar -xvf zeromq-4.1.4.tar.gz
  cd zeromq-4.1.4
  ./autogen.sh
  ./configure && make check
  make install
  ldconfig
  
install_jupyter :
  pip3 install jupyter
  
  

