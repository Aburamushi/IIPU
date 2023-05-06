#include "deviceinfo.h"
#include <fstream>
#include <QString>

DeviceInfo::DeviceInfo()
{
    std::ifstream filedevice("/proc/devices");
    std::string line;
    std::string result;
    while(!filedevice.eof()){
        std::getline(filedevice, line);
        result.append(line + "\n");
    }
    _deviceInfo = QString::fromStdString(result);
    //cout << _cpuInfo.toStdString() << endl;
    filedevice.close();
}
void DeviceInfo::setDeviceInfo(QString value){
    _deviceInfo = value;
}

QString DeviceInfo::getDeviceInfo(){
    return _deviceInfo;


    //cp /etc/sudoers /root/sudoers.bak
}
