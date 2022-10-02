import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: page

    signal finished(result: int)

    property int questionsCount
    property int questionNumber: 0
    property int correctAnswers: 0

    property var subModel
    property var currentQuestion
    property var currentOptions

    property var answers: []

    Image {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectCrop
        source: "qrc:/blurred-background"
    }

    Row {
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            margins: 20
        }
        height: childrenRect.height

        spacing: 10

        Repeater {
            model: answers

            Rectangle {
                height: 4
                radius: 2
                opacity: index < questionNumber ? 1 : 0.5
                width: (page.width - 40 - 10 * (questionsCount - 1)) / questionsCount
                color: answers[index + questionNumber - questionNumber]
            }
        }

    }





    Text {
        text: currentQuestion.question
        color: "white"
        width: parent.width
        wrapMode: Text.WordWrap
        font.pixelSize: 24
        anchors.bottom: image.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 20
    }

    Rectangle {
        id: image
        radius: 5
        border.color: "white"
        border.width: 2
        clip: true
        color: "transparent"
        width: parent.width - 40
        height: width
        anchors.centerIn: parent

        Image {
            anchors.fill: parent
            anchors.margins: 2
            fillMode: Image.PreserveAspectCrop
            source: "qrc:/images/" + page.currentQuestion.image
        }
    }

    Flow {
        id: flow
        spacing: 10
        width: parent.width
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: image.bottom
        anchors.margins: 20

        Repeater {
            model: page.currentOptions

            OptionButton {
                text: modelData
                width: (flow.width - 10) / 2
                onClicked: check(modelData, this)
            }
        }
    }





//    Column {
//        anchors.verticalCenter: parent.verticalCenter
//        anchors.left: parent.left
//        anchors.right: parent.right
//        anchors.margins: 20
//        spacing: 20

//        Text {
//            text: currentQuestion.question
//            color: "white"
//            width: parent.width
//            wrapMode: Text.WordWrap
//            font.pixelSize: 24
//        }

//        Rectangle {
//            radius: 5
//            border.color: "white"
//            border.width: 2
//            clip: true
//            color: "transparent"
//            width: parent.width
//            height: width

//            Image {
//                anchors.fill: parent
//                anchors.margins: 2
//                fillMode: Image.PreserveAspectCrop
//                source: "qrc:/images/" + page.currentQuestion.image
//            }
//        }

//        Flow {
//            id: flow
//            spacing: 10
//            width: parent.width

//            Repeater {
//                model: page.currentOptions

//                OptionButton {
//                    text: modelData
//                    width: (flow.width - 10) / 2
//                    onClicked: check(modelData, this)
//                }
//            }
//        }

//    }

    Information {
        id: information
        anchors.fill: parent
        onAcknowledged: next()
    }

    QuestionModel {
        id: questionModel
    }

    Timer {
        property bool correct
        id: timer
        interval: 1000
        repeat: false
        running: false
        onTriggered: {
            if (correct) {
                next()
            } else {
                information.show();
            }
        }
    }

    Component.onCompleted: {
        restart();
    }

    function next() {
        if (questionNumber >= questionsCount) {
            page.finished(Math.floor(page.correctAnswers / questionsCount * 100));
            return;
        }

        questionNumber++;
        information.visible = false
        page.currentQuestion = subModel[questionNumber - 1];
        page.currentOptions = prepareOptions(page.currentQuestion);
        information.currentQuestion = page.currentQuestion
        information.currentInfo = page.currentQuestion.info;
    }

    function prepareOptions(question) {
        return [ question.answer ]
            .concat(question.distractors.slice(0, 3))
            .sort(() => (Math.random() > .5) ? 1 : -1);
    }

    function check(userAnswer, button) {
        if (userAnswer === page.currentQuestion.answer) {
            page.correctAnswers++;
            button.state = "correct";
            timer.correct = true;
            timer.start();
            page.answers[page.questionNumber - 1] = "#64A546";
        } else {
            button.state = "incorrect";
            timer.correct = false;
            timer.start();
            page.answers[page.questionNumber - 1] = "#A52E2E";
        }
    }

    function restart() {
        page.subModel = questionModel.getSubModel(page.questionsCount);
        information.visible = false
        page.questionNumber = 0;
        page.correctAnswers = 0;
        page.answers = new Array(page.questionsCount).fill("#FF9900");
        next();
    }

}
