import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import com.lab3.event

Page {

    signal backButtonClicked();
    id: root
    background: Rectangle {
        id: lab3Page
        width: parent.width; height: parent.height
        color: "white"
        ScrollView{
            anchors.fill: parent
            clip: true
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            implicitHeight: height
            Label{
                id: logs
                padding: 10
                text: "Нажмите \'Page Up\' чтобы вывести состояние"
            }
        }
    }
    Keys.onPressed:  (event) =>
                     {
                         if(event.key === 16777235)//PageUp
                         {
                              keyEvent.pressAllIndicators();
                             logs.text += "\nВсе индикаторы инвертированы"
                         }
                     }

    BackButton{onBackButtonClicked: root.backButtonClicked();}

    IndicatorSwitcher{
        id: keyEvent
    }
}
