import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import com.lab3.event

Page {
    id: root
    signal backButtonClicked();
    signal firstPageButtonClicked();
    signal secondPageButtonClicked();
    signal thirdPageButtonClicked();
    signal fourthPageButtonClicked();


    background: Rectangle {
        id: page
        anchors.fill: parent
        Image{
            fillMode: Image.PreserveAspectCrop
            anchors.fill: parent
            source: "keyboard.jpg"
        }
    }
    Grid
    {
        id: infoButtons
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        rows: 2; columns: 2; spacing: 7
        Button
        {
            id: dEventButton
            text: "Акивация индикаторов клавиартуры"
            onClicked: root.firstPageButtonClicked()
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
                gradient: dEventButton.pressed ? pressedGradient1 :
                                               dEventButton.hovered ? hoveredGradient1 :
                                                                    normalGradient1
                radius: 10
                border.width: 2.0
                border.color: "#000000"
            }

        }
        Button
        {
            id: pageUpKeyButton
            text: "Выводит состояние индикаторов"
            onClicked: root.secondPageButtonClicked()
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
                gradient: pageUpKeyButton.pressed ? pressedGradient2 :
                                               pageUpKeyButton.hovered ? hoveredGradient2 :
                                                                    normalGradient2
                radius: 10
                border.width: 2.0
                border.color: "#000000"
            }
        }
        Button
        {
            id: funcKeyButton
            text: "Инвертирование индикаторов"
            onClicked: root.thirdPageButtonClicked()
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
                gradient: funcKeyButton.pressed ? pressedGradient3 :
                                               funcKeyButton.hovered ? hoveredGradient3 :
                                                                    normalGradient3
                radius: 10
                border.width: 2.0
                border.color: "#000000"
            }
        }

        Button
        {
            id: dAndPageUpKeyButton
            text: "Выключение индикаторов"
            onClicked: root.fourthPageButtonClicked()
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
                gradient: dAndPageUpKeyButton.pressed ? pressedGradient4 :
                                               dAndPageUpKeyButton.hovered ? hoveredGradient4 :
                                                                    normalGradient4
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
