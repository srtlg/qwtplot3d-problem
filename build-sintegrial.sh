#!/bin/sh
set -e
[ -x "$QMAKE" ] || QMAKE=qmake-qt5
srcdir=`pwd`/src
[ -e "$srcdir/qwtplot3d-sintegrial.pro" ]
[ -e "$srcdir/test_qwtplot3d-sintegrial.pro" ]
[ -e build-sintegrial ] && rm -rf build-sintegrial
mkdir build-sintegrial
cd build-sintegrial
destdir=`pwd`

mkdir build-qwtplot3d
cd build-qwtplot3d
"$QMAKE" -makefile "$srcdir/qwtplot3d-sintegrial.pro"
make -j `nproc`
make install "INSTALL_ROOT=$destdir"
cd ..

mkdir build-test-qwtplot3d
cd build-test-qwtplot3d
"$QMAKE" -makefile "$srcdir/test_qwtplot3d-sintegrial.pro" "DESTDIR=$destdir"
make

