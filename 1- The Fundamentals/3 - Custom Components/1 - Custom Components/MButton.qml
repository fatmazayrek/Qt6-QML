import QtQuick

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
