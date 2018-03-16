import VPlay 2.0
import QtQuick 2.0
import "../common"

SceneBase {
    id: loadScene

    // signal indicating that a level has been selected
    signal selectSave1Pressed
    signal selectSave2Pressed


    // background
    Rectangle {
        anchors.fill: parent.gameWindowAnchorItem
        color: "#ece468"
    }

    // back button to leave scene
    MenuButton {
        text: "Back"
        // anchor the button to the gameWindowAnchorItem to be on the edge of the screen on any device
        anchors.right: loadScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.bottom: loadScene.gameWindowAnchorItem.bottom
        anchors.bottomMargin: 10
        onClicked: backButtonPressed()
    }

    // levels to be selected
    Column {
        anchors.centerIn: parent
        spacing: 5
        MenuButton {
            text: "Save 1"

            onClicked: {selectSave1Pressed()
            }
        }
        MenuButton {
            text: "Save 2"

            onClicked: {selectSave2Pressed()
            }
        }

        }
    Text {
        id: text1
        text: "Lords of the Arena: Bloodsport"
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        y: 30
        font.bold: true
        font.family: "Times New Roman"
        font.pixelSize: 32
        anchors.horizontalCenter: parent.horizontalCenter
    }

    }

