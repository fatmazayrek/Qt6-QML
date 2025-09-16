import QtQuick

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Change Handler")

    // Set the name
    property string name: "Gurney"
    onNameChanged: {
        console.log("Name is changed to : ", name)
    }

    Rectangle {
        id: rectId
        width: 300; height: 300
        color: "yellowgreen"
        anchors.centerIn: parent

        Text {
            id: textId
            anchors.centerIn: rectId
            text: name
        }

        MouseArea {
            id: mouseAreaId
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked: (mouse)=> {
                if (mouse.button === Qt.RightButton)
                    rootId.name = 'Maggie';
                else
                    rootId.name = 'Gurney';
            }
        }
    }

    Component.onCompleted: {
        console.log("Name is changed to : ", name)
    }
}
