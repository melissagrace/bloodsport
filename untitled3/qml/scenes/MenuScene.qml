import VPlay 2.0
import QtQuick 2.0
import "../common"

SceneBase {
    id: menuScene

    // signal indicating that the selectLevelScene should be displayed
    signal selectContinuePressed
    signal selectNewPressed


    // signal indicating that the creditsScene should be displayed

    // background
    Rectangle {
        anchors.fill: parent.gameWindowAnchorItem
        color: "#47688e"
    }

    Column {
        id: columnMenu
        spacing: 5
        anchors.centerIn: parent


        MenuButton {
            id: continueButton
            radius: 5
            text: "Continue"
            visible: true
            onClicked: selectContinuePressed()

        }
        MenuButton {
            id: newgameButton
            radius: 5
            text: "New Game"
            visible: true
            onClicked: selectNewPressed()

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
