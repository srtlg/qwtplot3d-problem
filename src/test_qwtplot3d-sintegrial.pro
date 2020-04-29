TARGET = test_qwtplot3d

TEMPLATE = app

QT += widgets opengl

include(common.pri)

INCLUDEPATH += $${DESTDIR}/include

! exists($${DESTDIR}/include/qwt3d_plot3d.h) {
    error(expecting qwt3d_plot3d.h in $${DESTDIR}/include)
}

LIBS += -L$${DESTDIR}/lib -lqwtplot3d
LIBS += -lGLU

SOURCES = qwtplot3d-sintegrial/examples/simpleplot/simpleplot.cpp
