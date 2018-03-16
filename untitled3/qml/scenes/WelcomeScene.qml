import VPlay 2.0
import QtQuick 2.0
import "../common"


SceneBase {
    id: welcomeScene
   signal selectFightPressed
   signal selectSkipPressed

    Rectangle {
        anchors.fill: parent.gameWindowAnchorItem
        color: "#77688e"
    }



    Column {
        id: columnMenu
        spacing: 5
        anchors.right: welcomeScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.bottom: welcomeScene.gameWindowAnchorItem.bottom
        anchors.bottomMargin: 10

        MenuButton {
            id: fightButton
            radius: 5
            text: "Fight!"
            visible: true
            onClicked: selectFightPressed()

    }
        MenuButton {
            id: skipHomeButton
            radius: 5
            text: "Click me to skip to the home menu!"
            visible: true
            onClicked: selectSkipPressed()

    }
    }

    Text {
        id: text1
        text: "Welcome to the arena!"
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        y: 30
        font.bold: true
        font.family: "Times New Roman"
        font.pixelSize: 32
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Image {
    source: "../../assets/img/colpic.jpg"
    height: window.height / 5
    width: window.width / 5



    anchors.centerIn: parent
    }


}


