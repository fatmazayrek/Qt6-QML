import QtQuick

Window {
    width: 550
    height: 200
    visible: true
    title: qsTr("Image")
    color: "black"

    Item {
        id: containerId
        x: 50; y: 50
        width: 500; height: 100

        Image {
            id: imageId
            x: 0; y:0
            height: 100; width: 100
            source: "file:patlama.png"              // Loading the image from working directory
        }

        Image {
            id: image2Id
            x: 105; y:0
            height: 100; width: 100
            source: "qrc:/patlama.png"              // Loading the image from working directory
        }

        Image {
            id: image3Id
            x: 205; y:0
            height: 100; width: 100
            source: "file:///C:/Users/fzayrek/Desktop/FATMA/DENEME/QML/OsgEarth/Deneme3/patlama.png"              // Loading the image from certain directory
        }
    }
}
