#ifndef CONTROLLER_H
#define CONTROLLER_H
#include <QObject>

class Controller : public QObject
{
    Q_OBJECT
public:
    Controller();
    Q_INVOKABLE void writeUSBDevicesToFile();


};

#endif // CONTROLLER_H
