import VPlay 2.0
import QtQuick 2.0
import "../common"
import "../actor"

SceneBase {
    id: arenaSelectCol1Menu

    // signal indicating that the selectLevelScene should be displayed
    signal selectCol1Level1Pressed
    signal selectCol1Level2Pressed
    signal selectCol1Level3Pressed
    signal selectCol1Level4Pressed




    // signal indicating that the creditsScene should be displayed
    // background

     Image {
        source: "../../assets/img/logo.png"

        anchors.fill: parent.gameWindowAnchorItem


        }




// this will be organized into seperate pages for each tier
    Grid {
        id: gridMenu
        spacing: 5
        anchors.bottom: parent.gameWindowAnchorItem.bottom
        anchors.horizontalCenter: parent.gameWindowAnchorItem.horizontalCenter
        anchors.bottomMargin: 10
        columns: 2


        MenuButton {
            id: arenaCol1Level1
            radius: 5
            text: "Fight 1"
            visible: true
            onClicked: selectCol1Level1Pressed()

        }
        MenuButton {
            id: arenaCol1Level2
            radius: 5
            text: "Fight 2"
            visible: true
            onClicked: selectCol1Level2Pressed()

        }

        MenuButton {
            id: arenaCol1Level3
            radius: 5
            text: "Fight 3"
            visible: true
            onClicked: selectCol1Level3Pressed()

        }

        MenuButton {
            id: arenaCol1Level4
            radius: 5
            text: "Champion 1"
            visible: true
            onClicked: selectCol1Level4Pressed()

        }



    }


}
