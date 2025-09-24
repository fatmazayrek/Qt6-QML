import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Components in Place")

    // METHOD 1
    /* Column {
        spacing: 20
        anchors.centerIn: parent
        width: 200; height: 200

        Loader {
            id: loader1Id
            sourceComponent: componentId

            onLoaded: {
                var customButton = loader1Id.item

                customButton.buttonText = "Button 1"
                customButton.buttonColor = "Pink"
            }
        }

        Loader {
            id: loader2Id
            sourceComponent: componentId

            onLoaded: {
                var customButton = loader2Id.item

                customButton.buttonText = "Button 2"
                customButton.buttonColor = "Purple"
            }
        }

    }

    Component {
        id: componentId

        Item {
            id: rootItemId
            width: backgroundId.width
            height: backgroundId.height

            property alias buttonColor: backgroundId.color
            property alias buttonText: textId.text

            Rectangle {
                id: backgroundId
                width: 100; height: 30
                radius: 30
                border {
                    width: 1
                    color: "black"
                }

                Text {
                    id: textId
                    anchors.centerIn: parent
                    font.bold: true
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log(textId.text, " is Clicked")
                    }
                }
            }
        }
    } */

    component MButton: Rectangle {
        id: backgroundId

        property alias buttonColor: backgroundId.color
        property alias buttonText: textId.text

        width: 100; height: 30
        radius: 30
        border {
            width: 1
            color: "black"
        }

        Text {
            id: textId
            anchors.centerIn: parent
            font.bold: true
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log(textId.text, " is Clicked")
            }
        }
    }

    Column {
        spacing: 20
        anchors.centerIn: parent
        width: 200; height: 200

        MButton {
            buttonText: "Button 1"
            buttonColor: "pink"
        }

        MButton {
            buttonText: "Button 2"
            buttonColor: "purple"
        }
    }


}
