import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Button{
    id: navButton
    signal backButtonClicked();
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    anchors.margins: 10
    text: "Back"
    onClicked:
    {
        navButton.backButtonClicked();
    }
}

