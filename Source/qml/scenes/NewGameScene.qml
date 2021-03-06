import VPlay 2.0
import QtQuick 2.0
import "../common"
import "../actor"

SceneBase {
    id: newGameScene
    // uhh we need to track what the player selects, so that they have the correct character. or instead of choosing a starting type, we let them pick for each fight? maybe assign a value to chosen gladiator type, then check on each level what their choice is, and give them a menu where they can change their choice to switch gladiator?
   signal selectWeaponBladePressed
   signal selectWeaponTwoHandPressed
   signal selectWeaponSpecialPressed
   signal bladePlayer
   signal twoHandPlayer
   signal specialPlayer





    Rectangle {
        anchors.fill: parent.gameWindowAnchorItem
        color: "#734c37"
    }

    Image {
       source: "../../assets/img/gladiator-choice.png"
       width: 500
       height: 170
       anchors.centerIn: parent.gameWindowAnchorItem
       }

    MenuButton {
        text: "Back"
        radius: 1
        // anchor the button to the gameWindowAnchorItem to be on the edge of the screen on any device
        anchors.right: newGameScene.gameWindowAnchorItem.right
        anchors.rightMargin: 3
        anchors.bottom: newGameScene.gameWindowAnchorItem.bottom
        anchors.bottomMargin: 3
        onClicked: backButtonPressed()
    }


    Grid {
        id: gridMenu
        spacing: 5
        anchors.bottom: newGameScene.gameWindowAnchorItem.bottom
        anchors.horizontalCenter: parent.gameWindowAnchorItem.horizontalCenter
        anchors.bottomMargin: 10



        columns: 3


        MenuButton {
            id: bladeButton
            radius: 5
            text: "Blade"

            visible: true
            onClicked: selectWeaponBladePressed(), bladePlayer()



        }

        MenuButton {
            id: twoHandButton
            radius: 5
            text: "Two-Handed"

            visible: true
            onClicked: selectWeaponTwoHandPressed(), twoHandPlayer()

        }
        MenuButton {
            id: specialButton
            radius: 5
            text: "Special Weapon"

            visible: true
            onClicked: selectWeaponSpecialPressed(), specialPlayer()

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



