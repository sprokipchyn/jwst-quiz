import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

Item {
    id: page
    signal pressed()

    Image {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        source: "qrc:/background"
    }

    GameButton {
        id: startGameButton
        text: qsTr("START GAME")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 120
        onClicked: page.pressed()
    }

    Text {
        color: "white"
        text: qsTr("All images and information\nwas take from NASA websites")
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: startGameButton.bottom
        anchors.topMargin: 40
        font.pixelSize: 16
    }

}
