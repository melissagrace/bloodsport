import VPlay 2.0
import QtQuick 2.0
import "../common"
import "../actor"

SceneBase {
    id: arenaC1L1

    // signal indicating that the selectLevelScene should be displayed
    signal selectDefensiveStancePressed
    signal selectAttackPressed
    signal playerAttackEnemy(string entityId)
    signal enemyAttackPlayer(string entityId)


    // signal indicating that the creditsScene should be displayed
    // background


    Image {
       source: "../../assets/img/logo.png"

       anchors.fill: parent.gameWindowAnchorItem
        }



    Grid {
        id: gridMenu1
        spacing: 5
        anchors.top: parent.gameWindowAnchorItem.top
        anchors.centerIn: parent.gameWindowAnchorItem.centerIn
        anchors.topMargin: 10

        EnemyGladiator {
            id: enemyBlade
            health: 100
        }

        GladiatorBlade {
            id: gladiatorBlade
            //surprise im here, i am an entity from the actors folder and my image was changed from the default
        }

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
            onClicked: selectDefensiveStancePressed()


        }



    }
// need logic to transition to end fight scene, also need to create end fight scene










}

