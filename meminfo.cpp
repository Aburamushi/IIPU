#include "meminfo.h"
#include <fstream>
#include <QString>

MemInfo::MemInfo()
{
    std::ifstream filemem("/proc/meminfo");
    std::string line;
    std::string result;
    while(!filemem.eof()){
        std::getline(filemem, line);
        result.append(line + "\n");
    }
    _memInfo = QString::fromStdString(result);
    filemem.close();
}

void MemInfo::setMemInfo(QString value){
    _memInfo = value;
}

QString MemInfo::getMemInfo(){
    return _memInfo;
}
