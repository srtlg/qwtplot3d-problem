#!/bin/sh
set -e
[ -x "$QMAKE" ] || QMAKE=qmake-qt5
srcdir=`pwd`/src
[ -e "$srcdir/qwtplot3d.pro" ]
[ -e "$srcdir/test_qwtplot3d.pro" ]
[ -e build-svn ] && rm -rf build-svn
mkdir build-svn
cd build-svn
destdir=`pwd`

mkdir build-qwtplot3d
cd build-qwtplot3d
"$QMAKE" -makefile "$srcdir/qwtplot3d.pro"
make -j `nproc`
make install "INSTALL_ROOT=$destdir"
cd ..

mkdir build-test-qwtplot3d
cd build-test-qwtplot3d
"$QMAKE" -makefile "$srcdir/test_qwtplot3d.pro" "DESTDIR=$destdir"
make

