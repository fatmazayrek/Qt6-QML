import QtQuick

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Global Object")

    property bool isDarker: false
    property var fontList: Qt.fontFamilies()

    Rectangle {
        id: centerCircle
        height: 200
        width: 200
        radius: height / 2
        anchors.centerIn: parent
        color: "pink"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                // 1.Example
                if (!isDarker) {
                    centerCircle.color = Qt.darker(centerCircle.color)
                } else {
                    centerCircle.color = Qt.lighter(centerCircle.color)
                }
                isDarker = !isDarker

                // 2.Example
                centerCircle.color = Qt.tint(centerCircle.color, "#10FF0000")

                // 3.Example
                Qt.quit()
                Qt.openUrlExternally("file:///C:\Users\fzayrek\Pictures\Screenshots")

                for (var i = 0; i < root.fontList.length; i++) {
                    console.log("[ " + i + " ]", root.fontList[i])
                }
            }
        }
    }
}

