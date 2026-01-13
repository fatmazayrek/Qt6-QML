import QtQuick

Window {
    width: 300
    height: 200
    visible: true
    title: qsTr("Custom Component")

    Column {
        id: columnId
        anchors.centerIn: parent
        spacing: 10

        MButton {
            buttonColor: "pink"
            buttonText: "PinkButton"
        }

        MButton {
            buttonColor: "purple"
            buttonText: "PurpleButton"
        }
    }
}
