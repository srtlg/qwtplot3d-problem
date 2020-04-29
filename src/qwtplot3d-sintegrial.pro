TARGET = qwtplot3d

TEMPLATE = lib

CONFIG += c++11
CONFIG += staticlib

QT += opengl

include(common.pri)

INCLUDEPATH += qwtplot3d-sintegrial/include

HEADERS = \
qwtplot3d-sintegrial/include/qwt3d_appearance.h \
qwtplot3d-sintegrial/include/qwt3d_autoscaler.h \
qwtplot3d-sintegrial/include/qwt3d_axis.h \
qwtplot3d-sintegrial/include/qwt3d_color.h \
qwtplot3d-sintegrial/include/qwt3d_color_std.h \
qwtplot3d-sintegrial/include/qwt3d_colorlegend.h \
qwtplot3d-sintegrial/include/qwt3d_coordsys.h \
qwtplot3d-sintegrial/include/qwt3d_data.h \
qwtplot3d-sintegrial/include/qwt3d_drawable.h \
qwtplot3d-sintegrial/include/qwt3d_enrichment.h \
qwtplot3d-sintegrial/include/qwt3d_enrichment_std.h \
qwtplot3d-sintegrial/include/qwt3d_extglwidget.h \
qwtplot3d-sintegrial/include/qwt3d_function.h \
qwtplot3d-sintegrial/include/qwt3d_global.h \
qwtplot3d-sintegrial/include/qwt3d_graphplot.h \
qwtplot3d-sintegrial/include/qwt3d_gridmapping.h \
qwtplot3d-sintegrial/include/qwt3d_gridplot.h \
qwtplot3d-sintegrial/include/qwt3d_helper.h \
qwtplot3d-sintegrial/include/qwt3d_io.h \
qwtplot3d-sintegrial/include/qwt3d_io_reader.h \
qwtplot3d-sintegrial/include/qwt3d_label.h \
qwtplot3d-sintegrial/include/qwt3d_mapping.h \
qwtplot3d-sintegrial/include/qwt3d_meshplot.h \
qwtplot3d-sintegrial/include/qwt3d_openglhelper.h \
qwtplot3d-sintegrial/include/qwt3d_parametricsurface.h \
qwtplot3d-sintegrial/include/qwt3d_plot3d.h \
qwtplot3d-sintegrial/include/qwt3d_portability.h \
qwtplot3d-sintegrial/include/qwt3d_scale.h \
qwtplot3d-sintegrial/include/qwt3d_surfaceplot.h \
qwtplot3d-sintegrial/include/qwt3d_types.h \
qwtplot3d-sintegrial/include/qwt3d_valueptr.h \
qwtplot3d-sintegrial/include/qwt3d_volumeplot.h

SOURCES = \
qwtplot3d-sintegrial/src/qwt3d_appearance.cpp \
qwtplot3d-sintegrial/src/qwt3d_autoscaler.cpp \
qwtplot3d-sintegrial/src/qwt3d_axis.cpp \
qwtplot3d-sintegrial/src/qwt3d_color_std.cpp \
qwtplot3d-sintegrial/src/qwt3d_colorlegend.cpp \
qwtplot3d-sintegrial/src/qwt3d_coordsys.cpp \
qwtplot3d-sintegrial/src/qwt3d_data.cpp \
qwtplot3d-sintegrial/src/qwt3d_drawable.cpp \
qwtplot3d-sintegrial/src/qwt3d_enrichment_std.cpp \
qwtplot3d-sintegrial/src/qwt3d_extglwidget.cpp \
qwtplot3d-sintegrial/src/qwt3d_function.cpp \
qwtplot3d-sintegrial/src/qwt3d_graphplot.cpp \
qwtplot3d-sintegrial/src/qwt3d_gridmapping.cpp \
qwtplot3d-sintegrial/src/qwt3d_gridplot.cpp \
qwtplot3d-sintegrial/src/qwt3d_io.cpp \
qwtplot3d-sintegrial/src/qwt3d_io_reader.cpp \
qwtplot3d-sintegrial/src/qwt3d_label.cpp \
qwtplot3d-sintegrial/src/qwt3d_lighting.cpp \
qwtplot3d-sintegrial/src/qwt3d_meshplot.cpp \
qwtplot3d-sintegrial/src/qwt3d_parametricsurface.cpp \
qwtplot3d-sintegrial/src/qwt3d_plot3d.cpp \
qwtplot3d-sintegrial/src/qwt3d_scale.cpp \
qwtplot3d-sintegrial/src/qwt3d_surfaceplot.cpp \
qwtplot3d-sintegrial/src/qwt3d_types.cpp \
qwtplot3d-sintegrial/src/qwt3d_volumeplot.cpp

target.path = /lib

headers.files = $$HEADERS
headers.path = /include
INSTALLS      += target headers
