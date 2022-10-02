import QtQuick
import QtQuick.Controls

Item {
    id: page

    property int result
    signal finished()

    Image {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectCrop
        source: "qrc:/blurred-background"
    }

    Image {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: parent.height * 0.1
        source: "qrc:/logo"
    }

    Text {
        text: qsTr("Your score")
        color: "white"
        font.pixelSize: 28
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: resultText.top
    }

    Text {
        id: resultText
        text: result + "%"
        font.pixelSize: 96
        anchors.centerIn: parent
        color: "white"
    }

    GameButton {
        id: startGameButton
        text: qsTr("TRY AGAIN")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 110
        onClicked: page.finished()
    }
}
