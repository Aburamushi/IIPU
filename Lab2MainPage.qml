import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Page {
    id: root
    signal backButtonClicked();
    signal cpuButtonClicked();
    signal memoryButtonClicked();
    signal deviceButtonClicked();

    background: Rectangle {
        id: page
        width: parent.width; height: parent.height
        color: "#3c3c3c"
    }
    Image{
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
        source: "mainFont.jpg"
    }
    Grid{
        id: infoButtons
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        rows: 1; columns: 3; spacing: 7
        Button
        {
            id: cpuButton
            text: "CPU info"
            onClicked: root.cpuButtonClicked()
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
                gradient: cpuButton.pressed ? pressedGradient1 :
                                              cpuButton.hovered ? hoveredGradient1 :
                                                                  normalGradient1
                radius: 10
                border.width: 2.0
                border.color: "#000000"
            }

        }
        Button
        {
            id: memoryButton
            text: "Memory info"
            onClicked: root.memoryButtonClicked()
            background: Rectangle
            {
                Gradient {
                    id: normalGradient2
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "green" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                Gradient {
                    id: hoveredGradient2
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "#ff5e5e" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                Gradient {
                    id: pressedGradient2
                    GradientStop { position: 0.0; color: "#252525" }
                    GradientStop { position: 0.5; color: "#b00000" }
                    GradientStop { position: 1.0; color: "#252525" }
                }
                implicitWidth: 100
                implicitHeight: 50
                gradient: memoryButton.pressed ? pressedGradient2 :
                                               memoryButton.hovered ? hoveredGradient2 :
                                                                    normalGradient2
                radius: 10
                border.width: 2.0
                border.color: "#000000"
            }
        }
        Button
        {
            id: deviceButton
            text: "Devices info"
            onClicked: root.deviceButtonClicked()
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
                gradient: deviceButton.pressed ? pressedGradient :
                                               deviceButton.hovered ? hoveredGradient3 :
                                                                    normalGradient3
                radius: 10
                border.width: 2.0
                border.color: "#000000"
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
}
