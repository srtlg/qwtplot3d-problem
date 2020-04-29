CONFIG *= release
CONFIG *= warn_on

msvc {
    QMAKE_CFLAGS_RELEASE *= -Zi
    QMAKE_CXXFLAGS_RELEASE *= -Zi
    QMAKE_LFLAGS_RELEASE *= /DEBUG /OPT:REF
}

gcc {
    QMAKE_CFLAGS_RELEASE *= -g
    QMAKE_CXXFLAGS_RELEASE *= -g -Wno-deprecated-declarations
    QMAKE_STRIP = echo
}

