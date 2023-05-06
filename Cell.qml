import QtQuick 2.5

Item {
    id: container
    property color cellColor:"black"
    signal cellClicked();

    width: 40; height: 25


    Rectangle {
        id: rectangle
        border.color: "black"
        color: cellColor
        anchors.fill: parent
    }
    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
           parent.cellClicked();
        }
    }


}
