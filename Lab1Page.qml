import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import com.lab.cont 1.0

Page {
    id: root
    signal backButtonClicked();

    Rectangle{
        id: page
        anchors.fill: parent
    }
        Grid
        {
            id: colorPicker
            x: 4; anchors.bottom: root.bottom; anchors.bottomMargin: 4
            rows: 3; columns: 3; spacing: 3

            Cell
            {
                cellColor: "red"
                onCellClicked:
                {
                    console.log("hey");
                    page.color = cellColor;
                }

            }
            Cell
            {
                cellColor: "green"
                onCellClicked:
                {
                    page.color = cellColor
                }
            }
            Cell { cellColor: "blue"; onCellClicked: page.color = cellColor }
            Cell { cellColor: "yellow"; onCellClicked: page.color = cellColor }
            Cell { cellColor: "steelblue"; onCellClicked: page.color = cellColor }
            Cell { cellColor: "black"; onCellClicked: page.color = cellColor }
            Cell { cellColor: "#3c3c3c"; onCellClicked: page.color = cellColor }

        }



    Button {
        id: dmesgButton
        text: "Get device info"
        anchors.centerIn: parent
        onClicked:{ cont.writeUSBDevicesToFile();}
        background: Rectangle
        {
            Gradient {
                id: normalGradient
                GradientStop { position: 0.0; color: "#252525" }
                GradientStop { position: 0.5; color: "green" }
                GradientStop { position: 1.0; color: "#252525" }
            }
            Gradient {
                id: hoveredGradient
                GradientStop { position: 0.0; color: "#252525" }
                GradientStop { position: 0.5; color: "#ff5e5e" }
                GradientStop { position: 1.0; color: "#252525" }
            }
            Gradient {
                id: pressedGradient
                GradientStop { position: 0.0; color: "#252525" }
                GradientStop { position: 0.5; color: "#b00000" }
                GradientStop { position: 1.0; color: "#252525" }
            }
            implicitWidth: 100
            implicitHeight: 50
            gradient: dmesgButton.pressed ? pressedGradient :
                      dmesgButton.hovered ? hoveredGradient :
                                           normalGradient
            radius: 10
            border.width: 2.0
            border.color: "#000000"
        }
    }

    Rectangle{
        x: 0
        y: 280
        width: 300
        height: 150
        border.color: "black"
        radius: 10
        anchors.bottom: root.bottom
        anchors.left: root.left
        ColumnLayout{
            width: parent.width
            height: parent.height
            RowLayout{
                anchors.horizontalCenter: parent.horizontalCenter
                Label{
                    id: labelId
                    text: "Nill Kiggers"
                    color: black
                    font.pointSize: 16
                }

            }
            RowLayout{
                anchors.horizontalCenter: parent.horizontalCenter
                TextInput{
                    id: inputText
                    text: "Input here"
                    color: "black"
                    font.pointSize: 16
                    onEditingFinished: {
                        labelId.text = text;
                    }
                }
            }
        }
    }

    BackButton
    {
        onBackButtonClicked:
        {
            root.backButtonClicked();
        }
    }

    USBInfo {
        id: cont
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
