#!/bin/bash

if [ -d "$PIO_BUILT_PATH/build/zeromq-4.0.3" ]; then
	cd $PIO_BUILT_PATH/build/zeromq-4.0.3
	echo "Installing zeromq ..."
	sudo make install
	# @see https://github.com/JustinTulloss/zeromq.node/issues/15#issuecomment-626646
	sudo ldconfig
fi
