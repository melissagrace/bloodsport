import VPlay 2.0
import QtQuick 2.0
import "../common"
import "../actor"

SceneBase {
    id: arenaC1L1

    // signal indicating that the selectLevelScene should be displayed
    signal selectCombatStancePressed
    signal selectDefensiveStancePressed
    signal selectAttackPressed



    // signal indicating that the creditsScene should be displayed
    // background

     Image {
        source: "../../assets/img/logo.png"

        anchors.fill: parent.gameWindowAnchorItem


        }



    GladiatorBlade {
        id: gladiator
       //surprise im here, i am an entity from the actors folder and my image was changed from the default
        anchors.centerIn: parent.gameWindowAnchorItem.centerIn
        height: 100
        width: 40


    }


    Grid {
        id: gridMenu
        spacing: 5
        anchors.bottom: parent.gameWindowAnchorItem.bottom
        anchors.horizontalCenter: parent.gameWindowAnchorItem.horizontalCenter
        anchors.bottomMargin: 10
        columns: 2


        MenuButton {
            id: fightButton
            radius: 5
            text: "Fight!"
            visible: true
            onClicked: selectFightPressed()

        }
        MenuButton {
            id: combatStanceButton
            radius: 5
            text: "Combat Stance"
            visible: true
            onClicked: selectCombatPressed()

        }

        MenuButton {
            id: defensiveStanceButton
            radius: 5
            text: "Defensive Stance"
            visible: true
            onClicked: selectDefensivePressed()

        }



    }
// need logic to transition to end fight scene, also need to create end fight scene










}