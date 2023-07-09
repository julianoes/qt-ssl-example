#include <QCoreApplication>
#include <QDebug>
#include <QSslSocket>
#include <QTimer>
#include "downloadmanager.h"


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    qDebug() << "Buildversion: " << QSslSocket::sslLibraryBuildVersionString() << '\n';
    qDebug() << "Runversion: " << QSslSocket::sslLibraryVersionString() << '\n';
    qDebug() << "Supports SSL: " << QSslSocket::supportsSsl() << '\n';

    DownloadManager manager;
    QTimer::singleShot(0, &manager, SLOT(execute()));
    return a.exec();
}
