#ifndef MEMINFO_H
#define MEMINFO_H

#include <QObject>
#include <QString>

class MemInfo : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString getMemInfo READ getMemInfo WRITE setMemInfo NOTIFY memInfoChanged)

public:
    MemInfo();
signals:
    void memInfoChanged();
private:
    QString _memInfo;
    QString getMemInfo();
    void setMemInfo(QString value);
};

#endif // MEMINFO_H
