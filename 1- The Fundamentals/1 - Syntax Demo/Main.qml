import QtQuick

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Syntax Demo")

    property string text: ""
    property var anArray: [1, 2, 3, "four", "five", (function() {return "six";})]
    property date mDate: "2024-10-28"

    Row {
        anchors.centerIn: parent

        Rectangle {
            id: orangeRect
            height: 100; width: 100
            radius: 50

            gradient: Gradient {
                orientation: Gradient.Vertical
                GradientStop { position: 0.0; color: "orange" }
                GradientStop { position: 0.7; color: "yellow" }
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    root.text = "Orange"
                }
            }
        }

        Rectangle {
            id: blueRect
            height: 100; width: 100
            radius: 50

            gradient: Gradient {
                orientation: Gradient.Vertical
                GradientStop { position: 0.0; color: "dodgerblue" }
                GradientStop { position: 0.7; color: "powderblue" }
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    root.text = "Blue"
                }
            }
        }

        Rectangle {
            id: redRect
            height: 100; width: 100
            radius: 50

            gradient: Gradient {
                orientation: Gradient.Vertical
                GradientStop { position: 0.0; color: "red" }
                GradientStop { position: 0.7; color: "pink" }
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    root.text = "Red"
                }
            }
        }

        Rectangle {
            id: textRect
            height: 100; width: 100
            radius: 50

            gradient: Gradient {
                orientation: Gradient.Vertical
                GradientStop { position: 0.0; color: "darkcyan" }
                GradientStop { position: 0.7; color: "darkseagreen" }
            }

            Text {
                id: textofRect
                anchors.centerIn: parent
                font {
                    pointSize: 10
                }
                text: root.text     // property binding
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    textofRect.text = "Broken"      // property binding'i bozdu
                }
            }
        }
    }

    Component.onCompleted: {
        console.log("Today is : ", mDate)

        // 1. Yol
        // anArray.forEach(function(value) {
        //     console.log(value())
        // })

        // 2. Yol
        for (var i = 0; i < anArray.length; i++) {
            console.log(anArray[i])
        }
    }
}
