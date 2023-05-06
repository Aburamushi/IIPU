#include "cpuinfo.h"
#include <fstream>
#include <QString>

CpuInfo::CpuInfo()
{
    std::ifstream filecpu("/proc/cpuinfo");
    std::string line;
    std::string result;
    while(!filecpu.eof()){
        std::getline(filecpu, line);
        result.append(line + "\n");
    }
    _cpuInfo = QString::fromStdString(result);
    //cout << _cpuInfo.toStdString() << endl;
    filecpu.close();
}

void CpuInfo::setCpuInfo(QString value){
    _cpuInfo = value;
}

QString CpuInfo::getCpuInfo(){
    return _cpuInfo;


    //cp /etc/sudoers /root/sudoers.bak
}
