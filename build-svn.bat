SET srcdir=%~dp0
SET srcdir=%srcdir%src
SET QTDIR=C:\Qt\5.9.9\msvc2015_64
IF NOT EXIST %QTDIR%\bin\qmake.exe EXIT /B 10
IF NOT EXIST %srcdir%\qwtplot3d.pro EXIT /B 21
IF NOT EXIST %srcdir%\test_qwtplot3d.pro EXIT /B 21
IF EXIST build-svn DEL /S /Q build-svn

MKDIR build-svn
CD build-svn
SET destdir=%CD%

MKDIR build-qwtplot3d
CD build-qwtplot3d
"%QTDIR%\bin\qmake.exe" -makefile "%srcdir%\qwtplot3d.pro"
nmake 
nmake install "INSTALL_ROOT=%destdir%"
CD ..

MKDIR build-test-qwtplot3d
CD build-test-qwtplot3d
"%QTDIR%\bin\qmake.exe" -makefile "%srcdir%\test_qwtplot3d.pro" "DESTDIR=%destdir%"
nmake
CD ..

CD ..