import VPlay 2.0
import QtQuick 2.0
import "../common"
import "../actor"

SceneBase {
    id: arenaSelect

    // signal indicating that the selectLevelScene should be displayed
    signal selectCol1Pressed
    signal selectCol2Pressed
    signal selectCol3Pressed



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
            id: arenaCol1
            radius: 5
            text: "Arena Colosseum 1"
            visible: true
            onClicked: selectCol1Pressed()

        }
        MenuButton {
            id: arenaCol2
            radius: 5
            text: "Arena Colosseum 2"
            visible: true
            onClicked: selectCol2Pressed()

        }

        MenuButton {
            id: arenaCol3
            radius: 5
            text: "Arena Colosseum 3"
            visible: true
            onClicked: selectCol3Pressed()

        }



    }


}
