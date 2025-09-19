import QtQuick

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Binding")

    property int aFirstWidth: 100

    Rectangle {
        id: pinkCircle
        width: root.aFirstWidth
        height: width * 1.5
        radius: width / 2
        gradient: Gradient {
            GradientStop {position: 0.0; color: "mediumorchid"}
            GradientStop {position: 0.4; color: "plum"}
        }
    }

    Rectangle {
        id: brownCircle
        width: 100
        height: 100
        radius: width / 2
        anchors.bottom: parent.bottom
        gradient: Gradient {
            GradientStop {position: 0.0; color: "sienna"}
            GradientStop {position: 0.7; color: "tan"}
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                pinkCircle.width = pinkCircle.width + 10
            }
        }
    }

    Rectangle {
        id: yellowCircle
        width: 100
        height: 100
        radius: width / 2
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        gradient: Gradient {
            GradientStop {position: 0.0; color: "gold"}
            GradientStop {position: 0.5; color: "lemonchiffon"}
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                // pinkCircle.height = 100                              // property binding bozularak, static degisken oldu
                // pinkCircle.height = pinkCircle.width * 0.8;          // property binding bozularak, static degisken oldu

                pinkCircle.height = Qt.binding(function() {
                    return pinkCircle.width * 0.8})
            }
        }
    }
}
