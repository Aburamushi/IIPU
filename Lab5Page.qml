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
                    source: "mcs.jpg"
                }
                Label{
                    width: parent.width
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    padding: 10
                    text: "1) Подключаем CLK к кнопке SW3, а также соединяем выводы TxD и RxD
2) Подключаем все сигналы порта SIO1 к выводам микросхемы, а именно:
        -P1CFG = 01Fh
        -P2CFG = 0E0h
        -P3CFG = 80h
        -SIOCFG = 00h
3) Заносим во внутренний регистр управления (БА + 3) число 83h:
        -Порты БА + 0 и БА + 1 используются для доступа частоты
        -Контроля по четности нет
        -Обычное функционирование адаптера
        -1 стоп-бит
4) Заносим делитель частоты 1, тоесть рабочая частота около 115 МГц
5) Заносим во внутренний регистр управления (БА + 3) число 03h:
        -Порты БА + 0 и БА + 1 используются для доступа к регистрам данных и разрешение прерываний
        -Обычное функционирование адаптера
        -Контроля по четности нет
        -1 стоп-бит
        -Длина слова = 8 бит
6) В цикле сравниваем содержимое порта БА + 5 c 20h (32 в десятичной системе), таким образом проверяя 5 бит. Если 5 бит = 1, то это означает, что буферный регистр передатчика пуст
        -Если буферный регистр пуст, то загружаем в порт БА + 5 данные(буфер данных передатчика из адреса 4100h).
        -После записи происходит считывание данных с БА + 5 ( если биты 5 и 6 равны 1, то данные переданы полностью). Если 0 бит установлен в 1, то пришли новые данные
7) Возращаемся к пункту 6)
"


                }
            }
        }

    }
    BackButton { onBackButtonClicked: root.backButtonClicked() }
}
