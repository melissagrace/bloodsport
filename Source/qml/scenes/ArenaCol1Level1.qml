import VPlay 2.0
import QtQuick 2.0
import "../common"
import "../actor"

SceneBase {
    id: arenaC1L1

    // signal indicating that the selectLevelScene should be displayed
    signal selectDefensiveStancePressed
    signal selectAttackStancePressed
    signal selectAttackPressed
    signal playerAttackEnemy(string entityId)
    signal enemyAttackPlayer(string entityId)


    // signal indicating that the creditsScene should be displayed
    // background


    Image {
       source: "../../assets/img/Arena.png"

       anchors.fill: parent.gameWindowAnchorItem
        }

    EnemyGladiator {
        id: enemyBlade
        health: 100
        x: 240
        y: 60
    }

    GladiatorBlade {
        id: gladiatorBlade
        x: 20
        y: 60
    }


    Text {
        id: textStatus
        text: "Player Health " + gladiatorBlade.health + "             " + "Enemy Health " + enemyBlade.health
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        y: 30
        font.bold: true
        font.family: "Times New Roman"
        font.pixelSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        color: "#dcbb6d"
    }

    Grid {
        id: gridMenu
        spacing: 5
        anchors.bottom: parent.gameWindowAnchorItem.bottom
        anchors.horizontalCenter: parent.gameWindowAnchorItem.horizontalCenter
        anchors.bottomMargin: 10
        columns: 2


        MenuButton {
            id: attackButton
            radius: 5
            text: "Fight!"
            visible: true
            onClicked: playerAttackEnemy("enemyBlade"), enemyAttackPlayer("gladiatorBlade") //ideally a function should determine player's current fielded gladiator
        }

        MenuButton {
            id: defensiveStanceButton
            radius: 5
            text: "Defensive Stance"
            visible: true
            onClicked: enemyBlade.hitChanceBonus = -15 //selectDefensiveStancePressed(), enemyBlade.hitChanceBonus = -15


        }
        MenuButton {
            id: attackStanceButton
            radius: 5
            text: "Attack Stance"
            visible: true
            onClicked: gladiatorBlade.hitChanceBonus = 15 // selectAtttackStancePressed(), gladiatorBlade.hitChanceBonus = 15


        }




    }
// need logic to transition to end fight scene, also need to create end fight scene










}
