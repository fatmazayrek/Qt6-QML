import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Rectangle Item Text")

    Item {
        id: itemId
        height: 300; width: 300
        x: 230; y:50

        Rectangle {
            id: rectId
            color: "yellowgreen"
            anchors.fill: parent // It is necessary to visualize

            border {
                color: "green"
                width: 2
            }
        }

        Rectangle {
            id: redRectId
            x: 5; y: 5                      // position relative of Item
            width: 50; height: 50
            color: "red"
        }

        Rectangle {
            id: greenRectId
            x: 65; y: 5                     // position relative of Item
            width: 50; height: 50
            color: "green"
        }

        Rectangle {
            id: blueRectId
            x: 125; y: 5                     // position relative of Item
            width: 50; height: 50
            color: "blue"
        }

        Text {
            id: textId
            x: 100; y: 100                  // position relative of Item
            text: qsTr("Hello World")
            font {
                family: "Helvetica"
                pointSize: 15
                bold: true
            }
        }
    }
}
