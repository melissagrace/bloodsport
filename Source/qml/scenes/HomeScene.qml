import VPlay 2.0
import QtQuick 2.0
import "../common"

SceneBase {
    id: homeScene

    // signal indicating that the selectLevelScene should be displayed
    signal selectManagePressed
    signal selectStorePressed
    signal selectArenaPressed
    signal selectPitsPressed





    // signal indicating that the creditsScene should be displayed

    // background
    Rectangle {
        anchors.fill: parent.gameWindowAnchorItem
        color: "#000000"
    }

    Column {
        id: columnMenu
        spacing: 5
        anchors.centerIn: parent


        MenuButton {
            id: manageButton
            radius: 5
            text: "Manage Fighters"
            visible: true
            onClicked: selectManagePressed()

        }
        MenuButton {
            id: storeButton
            radius: 5
            text: "Store"
            visible: true
            onClicked: selectStorePressed()

        }
        MenuButton {
            id: arenaButton
            radius: 5
            text: "Enter Arena"
            visible: true
            onClicked: selectArenaPressed()

        }
        MenuButton {
            id: pitsButton
            radius: 5
            text: "Enter the Abyssus"
            visible: true
            onClicked: selectPitsPressed()

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
        color: "#dcbb6d"
    }
}
