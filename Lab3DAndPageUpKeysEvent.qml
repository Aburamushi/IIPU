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
                text: "Нажмите \'Page Up\' для выключение индикаторов либо D для получения состояния"
            }
        }
    }
    Keys.onPressed:  (event) =>
                     {
                         if(event.key === Qt.Key_D)//PageUp
                         {
                             logs.text += "\n" + "Caps_Lock: " + keyEvent.getCapsLockStatus()+
                             "\nNum_Lock:"+ keyEvent.getNumLockStatus() + "\nScroll_Lock: "+ keyEvent.getScrollLockStatus() + "\n";
                         }
                         if(event.key === 16777235)//PageUp
                         {
                             logs.text += keyEvent.offIndicatorsIfOn()
                         }
                     }

    BackButton{onBackButtonClicked: root.backButtonClicked();}

    IndicatorSwitcher{
        id: keyEvent
    }
}
