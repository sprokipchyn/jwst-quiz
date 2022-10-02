import QtQuick

Rectangle {
    id: button

    property alias text: caption.text
    signal clicked()

    radius: 10
    color: "#ff9900"

    width: caption.width + 60
    height: caption.height + 30

    Text {
        id: caption
        anchors.centerIn: parent
        font.pixelSize: 24
        font.bold: true
        color: "white"
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: button.clicked()
    }

    states: [

        State {
            name: "hovered"
            when: mouseArea.containsMouse && !mouseArea.pressed

            PropertyChanges {
                target: button
                color: "#FFAE34"
            }
        },

        State {
            name: "clicked"
            when: mouseArea.pressed

            PropertyChanges {
                target: button
                border.color: "white"
                border.width: 5
            }
        }

    ]
}
