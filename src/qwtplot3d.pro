TARGET = qwtplot3d

TEMPLATE = lib

CONFIG += c++11
CONFIG += staticlib

QT += opengl

include(common.pri)

INCLUDEPATH += qwtplot3d/include

HEADERS_ += include/qwt3d_extglwidget.h \
    include/qwt3d_color.h \
    include/qwt3d_global.h \
    include/qwt3d_types.h \
    include/qwt3d_axis.h \
    include/qwt3d_coordsys.h \
    include/qwt3d_drawable.h \
    include/qwt3d_helper.h \
    include/qwt3d_label.h \
    include/qwt3d_openglhelper.h \
    include/qwt3d_curve.h \
    include/qwt3d_colorlegend.h \
    include/qwt3d_plot.h \
    include/qwt3d_enrichment.h \
    include/qwt3d_enrichment_std.h \
    include/qwt3d_autoscaler.h \
    include/qwt3d_autoptr.h \
    include/qwt3d_io.h \
    include/qwt3d_io_reader.h \
    include/qwt3d_scale.h \
    include/qwt3d_portability.h \
    include/qwt3d_mapping.h \
    include/qwt3d_gridmapping.h \
    include/qwt3d_parametricsurface.h \
    include/qwt3d_function.h \
    include/qwt3d_volumeplot.h \
    include/qwt3d_graphplot.h \
    include/qwt3d_multiplot.h \
    include/qwt3d_io_gl2ps.h \
    3rdparty/gl2ps/gl2ps.h

SOURCES_ += src/qwt3d_extglwidget.cpp \
    src/qwt3d_axis.cpp \
    src/qwt3d_color.cpp \
    src/qwt3d_coordsys.cpp \
    src/qwt3d_drawable.cpp \
    src/qwt3d_mousekeyboard.cpp \
    src/qwt3d_movements.cpp \
    src/qwt3d_lighting.cpp \
    src/qwt3d_curve.cpp \
    src/qwt3d_colorlegend.cpp \
    src/qwt3d_plot.cpp \
    src/qwt3d_label.cpp \
    src/qwt3d_types.cpp \
    src/qwt3d_enrichment_std.cpp \
    src/qwt3d_autoscaler.cpp \
    src/qwt3d_io_reader.cpp \
    src/qwt3d_io.cpp \
    src/qwt3d_scale.cpp \
    src/qwt3d_gridmapping.cpp \
    src/qwt3d_parametricsurface.cpp \
    src/qwt3d_function.cpp \
    src/qwt3d_gridplot.cpp \
    src/qwt3d_meshplot.cpp \
    src/qwt3d_io_gl2ps.cpp \
    3rdparty/gl2ps/gl2ps.c

for(file, HEADERS_) {
    HEADERS += qwtplot3d/$${file}
}
for(file, SOURCES_) {
    SOURCES += qwtplot3d/$${file}
}

target.path = /lib

headers.files = $$HEADERS
headers.path = /include
INSTALLS      += target headers
