import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 200
    height: 280
    visible: true
    title: qsTr("Hello World")

    Image {
        id: travelWordimage
        visible: true
        x: 50
        y: 51
        width: 100
        height: 100
        source: "travelword.jfif"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: eatWordimage
        x: 50
        y: 157
        width: 100
        height: 100
        source: "eatword.jfif"
        fillMode: Image.PreserveAspectFit

        MouseArea {
            id: eatclick
            x: 0
            y: 0
            width: 100
            height: 100
            onClicked: {eatImage.visible = true
                eatWordimage.visible = false
                travelWordimage.visible = false
            questionText.visible = false}
        }
    }

    Image {
        id: eatImage
        visible:false
        x: 14
        y: 39
        width: 171
        height: 181
        source: "eat.jfif"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: travelImage
        visible: false
        x: 24
        y: 58
        width: 161
        height: 199
        source: "travel.jfif"
        fillMode: Image.PreserveAspectFit
    }

    MouseArea {
        id: travelClick
        x: 50
        y: 67
        width: 100
        height: 67
        onClicked: {travelImage.visible = true
            eatWordimage.visible = false
            travelWordimage.visible = false
        questionText.visible = false}
    }

    Text {
        id: questionText
        x: 14
        y: 22
        width: 204
        height: 16
        text: qsTr("What do you Prefer to do?")
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 1
        width: 200
        height: 22
        color: "#4d4d4d"

        Text {
            id: text1
            x: 13
            y: 3
            text: qsTr("SURVEY")
            font.pixelSize: 12
        }
    }
}
