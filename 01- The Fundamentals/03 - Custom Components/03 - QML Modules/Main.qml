import QtQuick
import CustomComponents

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Modules")

    Column {
        anchors.centerIn: parent
        spacing: 20

        MBlueButton {
            id: blueButtonId

            buttonColor: "blue"
            buttonText: "BlueButton"
        }

        MGreenButton {
            id: greenButtonId

            buttonColor: "green"
            buttonText: "GreenButton"
        }

        MRedButton {
            id: redButtonId

            buttonColor: "red"
            buttonText: "RedButton"
        }

        MYellowButton {
            id: yellowButtonId

            buttonColor: "yellow"
            buttonText: "YellowButton"
        }

    }
}
