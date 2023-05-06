#include "Controller.h"
#include <stdlib.h>

Controller::Controller()
{

}

void Controller::writeUSBDevicesToFile()
{
    system("dmesg | grep -i usb > ~/Документы/lab1/lab1.txt");
}
