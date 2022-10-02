import QtQuick

Rectangle {
    id: button

    property alias text: caption.text
    signal clicked()

    radius: 4
    border.color: "#ff9900"
    border.width: 2
    color: "transparent"

    width: caption.width + 80
    height: caption.height + 20

    Text {
        id: caption
        anchors.centerIn: parent
        font.pixelSize: 18
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
            name: "clicked"
            when: mouseArea.pressed

            PropertyChanges {
                target: button
                color: "#ff9900"
            }
        },

        State {
            name: "correct"

            PropertyChanges {
                target: button
                color: "#64A546"
                border.width: 0
            }
        },

        State {
            name: "incorrect"

            PropertyChanges {
                target: button
                color: "#A52E2E"
                border.width: 0
            }
        }

    ]
}
