#ifndef CPUINFO_H
#define CPUINFO_H

#include <QObject>
#include <QString>

class CpuInfo : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString getCpuInfo READ getCpuInfo WRITE setCpuInfo NOTIFY cpuInfoChanged)

public:
    CpuInfo();
signals:
    void cpuInfoChanged();
private:
    QString _cpuInfo;
    QString getCpuInfo();
    void setCpuInfo(QString value);
};

#endif // CPUINFO_H
