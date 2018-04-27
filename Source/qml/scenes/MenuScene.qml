import VPlay 2.0
import QtQuick 2.0
import "../common"
import "../actor"

SceneBase {
    id: menuScene

    // signal indicating that the selectLevelScene should be displayed
    signal selectContinuePressed
    signal selectNewPressed


    // signal indicating that the creditsScene should be displayed
    // background

     Image {
        source: "../../assets/img/logo.png"

        anchors.fill: parent.gameWindowAnchorItem


        }




    Grid {
        id: gridMenu
        spacing: 5
        anchors.bottom: parent.gameWindowAnchorItem.bottom
        anchors.horizontalCenter: parent.gameWindowAnchorItem.horizontalCenter
        anchors.bottomMargin: 10
        columns: 2


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











}
