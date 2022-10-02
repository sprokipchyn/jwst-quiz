import qbs

CppApplication {
    Depends { name: "Qt.quick" }

    install: true

    // Additional import path used to resolve QML modules in Qt Creator's code model
    property pathList qmlImportPaths: []

    files: [
        "images.qrc",
        "main.cpp",
    ]
    Group {
        files: [
            "GameButton.qml",
            "GameScreen.qml",
            "Information.qml",
            "OptionButton.qml",
            "QuestionModel.qml",
            "ResultScreen.qml",
            "StartScreen.qml",
            "main.qml",
        ]
        Qt.core.resourcePrefix: "jwst/"
        fileTags: ["qt.qml.qml", "qt.core.resource_data"]
    }
}
