import QtQuick
import QtQuick.Controls

Window {
    id: window

    width: 428
    height: 926
    visible: true
    title: qsTr("JWST Quiz")

    property int result

    StackView {
        id: root
        anchors.fill: parent
        initialItem: startScreen
    }

    Component {
        id: startScreen

        StartScreen {
            onPressed: {
                root.push(gameScreen)
            }
        }
    }

    Component {
        id: gameScreen

        GameScreen {
            id: temp
            questionsCount: 10
            onFinished: result => {
                window.result = result;
                root.push(resultScreen);
            }
        }
    }

    Component {
        id: resultScreen

        ResultScreen {
            result: window.result

            onFinished: {
                root.pop();
                root.currentItem.restart();
                root.pop();
            }
        }
    }
}
