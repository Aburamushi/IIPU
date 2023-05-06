import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Page {
    id: root
    signal backButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "white"
        ScrollView{
            id: scroller
            anchors.fill: parent
            clip: true
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            implicitHeight: height
            ColumnLayout
            {
                id: columnLayout
                spacing: 10
                height: scroller.height
                width: scroller.width
                Image{
                    fillMode: Image.PreserveAspectCrop
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    source: "lcdWork.png"
                }
                Label{
                    width: parent.width
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    padding: 10
                    text: "Особенности\n\n1)Зум 1,2× (оптический)\n2)Передача изображения по беспроводной сети Wi-fi (опционально)\n3)Подключение по проводной сети\n4)2 разъема HDMI\n5)Автоматическая коррекция вертикальных трапецеидальных искажений\n  6)Ручная коррекция горизонтальных трапецеидальных искажений\n7)Функция Quick Corner\n8)Возможность просмотра изображений напрямую с USB носителей\n9)Функция копирования настроек и обновления прошивки через USB\n10)USB Display 3-в-1 – передача изображения, звука и сигналов управления по USB кабелю\n11)Функция Split Screen\n12)Прямое подключение к документ-камерам Epson ELPDC06 и ELPDC07\n13)Встроенный динамик 5 Вт\n14)Фронтальный вывод тепла\n15)Моментальное выключение\n"


                }
            }
        }

    }
    BackButton { onBackButtonClicked: root.backButtonClicked() }
}
