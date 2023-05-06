import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Page {
    id: root

    signal labOneButtonClicked();
    signal labTwoButtonClicked();
    signal labThirdButtonClicked();
    signal labFourthButtonClicked();
    signal labFiveButtonClicked();

    Image{
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
        source: "mainFont.jpg"
    }
    Grid {
        id: buttonPicker
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        rows: 3; columns: 2; spacing: 15

        Button{
            id: lab1Button
            height: 40
            background: Rectangle
            {
                Gradient {
                    id: normalGradient1
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "green" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                Gradient {
                    id: hoveredGradient1
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "#ff5e5e" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                Gradient {
                    id: pressedGradient1
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "#b00000" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                implicitWidth: 100
                implicitHeight: 50
                gradient: lab1Button.pressed ? pressedGradient :
                          lab1Button.hovered ? hoveredGradient :
                                               normalGradient
                radius: 10
                border.width: 2.0
                border.color: "#000000"
            }
            text: "Работа с DMESG"
            onClicked:{
                root.labOneButtonClicked();
            }
        }

        Button{
            id: lab2Button
            height: 40
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
                gradient: lab2Button.pressed ? pressedGradient :
                          lab2Button.hovered ? hoveredGradient :
                                               normalGradient
                radius: 10
                border.width: 2.0
                border.color: "#000000"
            }

            text: "Работа с файловой системой"
            onClicked:{
                root.labTwoButtonClicked();
            }
        }

        Button {
            id: lab3Button
            height: 40
            background: Rectangle
            {
                Gradient {
                    id: normalGradient3
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "green" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                Gradient {
                    id: hoveredGradient3
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "#ff5e5e" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                Gradient {
                    id: pressedGradient3
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "#b00000" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                implicitWidth: 100
                implicitHeight: 50
                gradient: lab3Button.pressed ? pressedGradient :
                          lab3Button.hovered ? hoveredGradient :
                                               normalGradient
                radius: 10
                border.width: 2.0
                border.color: "#000000"
            }
            text: "Работа с клавиатурой"
            onClicked:{
                root.labThirdButtonClicked();
            }
        }

        Button {
            id: lab4Button
            height: 40
            background: Rectangle
            {
                Gradient {
                    id: normalGradient4
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "green" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                Gradient {
                    id: hoveredGradient4
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "#ff5e5e" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                Gradient {
                    id: pressedGradient4
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "#b00000" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                implicitWidth: 100
                implicitHeight: 50
                gradient: lab4Button.pressed ? pressedGradient :
                          lab4Button.hovered ? hoveredGradient :
                                               normalGradient
                radius: 10
                border.width: 2.0
                border.color: "#000000"
            }
            text: "Работа с проектором"

            onClicked:{
                root.labFourthButtonClicked();
            }
        }

        Button {
            id: lab5Button
            height: 40
            background: Rectangle
            {
                Gradient {
                    id: normalGradient5
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "green" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                Gradient {
                    id: hoveredGradient5
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "#ff5e5e" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                Gradient {
                    id: pressedGradient5
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "#b00000" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                implicitWidth: 100
                implicitHeight: 50
                gradient: lab5Button.pressed ? pressedGradient :
                          lab5Button.hovered ? hoveredGradient :
                                               normalGradient
                radius: 10
                border.width: 2.0
                border.color: "#000000"
            }
            text: "Работа с Классик-1"
            onClicked: {
                root.labFiveButtonClicked();
            }
        }
    }


}
