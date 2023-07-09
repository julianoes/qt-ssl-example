QT -= gui

CONFIG += c++17 console
CONFIG -= app_bundle

QT += network

QMAKE_CXXFLAGS += -DOPENSSL_API_COMPAT=0x30000000L -DOPENSSL_NO_DEPRECATED

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        downloadmanager.cpp \
        main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    downloadmanager.h
