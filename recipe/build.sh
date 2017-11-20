#!/bin/bash

mkdir build && cd build
cmake -D CMAKE_PREFIX_PATH=$PREFIX \
      -D CMAKE_INSTALL_PREFIX=$PREFIX \
      -D WITH_PROJ4=ON \
      -D WITH_ZLIB=ON \
      -D WITH_JPEG=ON \
      -D WITH_TIFF=ON \
      $SRC_DIR

make -j$CPU_COUNT
make install -j$CPU_COUNT
