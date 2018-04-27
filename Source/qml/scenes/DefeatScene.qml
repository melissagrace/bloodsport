import VPlay 2.0
import QtQuick 2.0
import "../common"

SceneBase {
    id: defeatScene

    // signal indicating that the defeatScene should be displayed
    signal
    signal


    // signal indicating that the creditsScene should be displayed

    // background
    Image {
    source: "../../assets/img/DEFEAT.png"

    anchors.fill: parent.gameWindowAnchorItem


    }

    Grid {
        id: gridMenu
        spacing: 5
        anchors.bottom: parent.gameWindowAnchorItem.bottom
        anchors.horizontalCenter: parent.gameWindowAnchorItem.horizontalCenter
        anchors.bottomMargin: 10
        columns: 1


        MenuButton {
            id: continueButton
            radius: 5
            text: "Continue"
            visible: true
            onClicked: selectContinuePressed()

        }
    }




}
