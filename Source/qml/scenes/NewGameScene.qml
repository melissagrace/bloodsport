import VPlay 2.0
import QtQuick 2.0
import "../common"

SceneBase {
    id: newGameScene
   signal selectWeaponPressed

    Rectangle {
        anchors.fill: parent.gameWindowAnchorItem
        color: "#000000"
    }

    MenuButton {
        text: "Back"
        // anchor the button to the gameWindowAnchorItem to be on the edge of the screen on any device
        anchors.right: newGameScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.bottom: newGameScene.gameWindowAnchorItem.bottom
        anchors.bottomMargin: 10
        onClicked: backButtonPressed()
    }


    Grid {
        id: gridMenu
        spacing: 5
        anchors.centerIn: parent
        columns: 3


        MenuButton {
            id: bladeButton
            radius: 5
            text: "Blade"
            visible: true
            onClicked: selectWeaponPressed()

        }
        MenuButton {
            id: twoHandButton
            radius: 5
            text: "Two-Handed"
            visible: true
            onClicked: selectWeaponPressed()

        }
        MenuButton {
            id: specialButton
            radius: 5
            text: "Special Weapon"
            visible: true
            onClicked: selectWeaponPressed()

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



