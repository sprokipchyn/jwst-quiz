import QtQuick
import QtQuick.Controls

Rectangle {
    id: page

    signal acknowledged()
    property var currentQuestion
    property var currentInfo

    color: "white"
    visible: false

    ScrollView {
        id: scroll
        anchors.fill: page
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff

        Column {

            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            height: childrenRect.height

            Rectangle {
                width: parent.width
                height: 30
            }

            Column {
                spacing: 20
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width - 40
                height: childrenRect.height

                Text {
                    text: page.currentInfo.fullName
                    width: parent.width
                    wrapMode: Text.WordWrap
                    font.pixelSize: 24
                    color: "#FF9900"
                }

                Row {
                    width: parent.width
                    spacing: 10
                    height: brief.height

                    Rectangle {
                        width: 4
                        radius: 2
                        height: parent.height
                        color: "#FF9900"
                    }

                    Text {
                        id: brief
                        text: page.currentInfo.brief
                        width: page.width - 50
                        wrapMode: Text.WordWrap
                        font.italic: true
                        lineHeight: 1.5
                    }
                }

                Image {
                    width: parent.width
                    fillMode: Image.PreserveAspectCrop
                    height: 300

                    source: "qrc:/images/" + page.currentQuestion.image
                }

                Text {
                    text: page.currentInfo.description
                    width: parent.width
                    wrapMode: Text.WordWrap
                    lineHeight: 1.5
                }

                Image {
                    property bool defined: page.currentInfo !== undefined && page.currentInfo.image !== undefined
                    width: defined ? parent.width : 0
                    fillMode: Image.PreserveAspectCrop
                    height: width

                    source: defined ? "qrc:/images/instruments/" + page.currentInfo.image : ""
                }
            }

            Rectangle {
                width: parent.width
                height: 10
            }

            Rectangle {
                width: page.width
                height: button.height + 40
                color: "black"

                GameButton {
                    id: button
                    text: qsTr("Got it")
                    anchors.centerIn: parent
                    onClicked: page.acknowledged()
                }
            }

        }

    }

    function show() {
        scroll.ScrollBar.vertical.position = 0;
        visible = true;
    }
}
