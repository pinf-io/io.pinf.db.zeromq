#!/bin/bash


# TODO: Don't install globally?

if [ ! -e "/usr/local/lib/libzmq.so" ]; then
	sudo apt-get install -y --force-yes make libtool autoconf automake uuid-dev build-essential

	wget http://download.zeromq.org/zeromq-4.0.3.tar.gz
	tar zxvf zeromq-4.0.3.tar.gz && cd zeromq-4.0.3
	./configure
	make
	sudo make install
	// @see https://github.com/JustinTulloss/zeromq.node/issues/15#issuecomment-626646
	sudo ldconfig
else
	echo "libzmq already installed based on found: /usr/local/lib/libzmq.so"
fi
