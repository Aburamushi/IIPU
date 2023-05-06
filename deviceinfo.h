#ifndef DEVICEINFO_H
#define DEVICEINFO_H
#include <QObject>
#include <QString>


class DeviceInfo : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString getDeviceInfo READ getDeviceInfo WRITE setDeviceInfo NOTIFY devicepuInfoChanged)

public:
    DeviceInfo();

signals:
    void devicepuInfoChanged();

private:
    QString _deviceInfo;
    QString getDeviceInfo();
    void setDeviceInfo(QString value);
};

#endif // DEVICEINFO_H
