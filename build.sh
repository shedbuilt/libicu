#!/bin/bash
# To prevent errors loading shared libraries during installation, comment out LDFLAGSICUDT
cd source && \
./configure --prefix=/usr && \
sed -i "s/LDFLAGSICUDT=.*/LDFLAGSICUDT=/" config/mh-linux && \
make -j $SHED_NUM_JOBS && \
make DESTDIR="$SHED_FAKE_ROOT" install
