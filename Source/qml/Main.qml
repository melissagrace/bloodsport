import VPlay 2.0
import QtQuick 2.0
import "scenes"
import "actor"


GameWindow {
    id: window
    screenWidth: 960
    screenHeight: 640




    // create and remove entities at runtime
    EntityManager {
        id: entityManager
        entityContainer: scene


    }







    // menu scene
    MenuScene {
        id: menuScene
        // listen to the button signals of the scene and change the state according to it
        onSelectContinuePressed: window.state = "selectLevel"
        onSelectNewPressed: window.state = "story"
        // the menu scene is our start scene, so if back is pressed there we ask the user if he wants to quit the application
        onBackButtonPressed: {
            nativeUtils.displayMessageBox(qsTr("Really quit the game?"), "", 2);
        }
        // listen to the return value of the MessageBox
        Connections {
            target: nativeUtils
            onMessageBoxFinished: {
                // only quit, if the activeScene is menuScene - the messageBox might also get opened from other scenes in your code
                if(accepted && window.activeScene === menuScene)
                    Qt.quit()
            }
        }

    }

    // scene for selecting levels
    LoadScene {
        id: loadScene

        onBackButtonPressed: window.state = "menu"
    }

    NewGameScene {
        id: newGameScene
        onSelectWeaponBladePressed: window.state = "welcome"
        onSelectWeaponTwoHandPressed: window.state = "welcome"
        onSelectWeaponSpecialPressed: window.state = "welcome"
        onBackButtonPressed: window.state = "menu"
        onBladePlayer: gladiatorBlade.player = true
        onSpecialPlayer: gladiatorSpecial.player = true
        onTwoHandPlayer: gladiator2Hand.player = true
    }

    WelcomeScene {
         id: welcomeScene
         onSelectSkipPressed: window.state = "home"

     }
    HomeScene {
         id: homeScene
         onSelectArenaPressed: window.state = "arenaSelect"

     }

    Scene {
        id: introStoryScene
        onSelectContinuePressed: window.state = "newGame"

     }

    ArenaSelectMenu{
        id: arenaSelect
        onSelectCol1Pressed: window.state = "arenaCol1Menu"

    }

    ArenaCol1Menu {
        id: arenaSelectCol1Menu
        onSelectCol1Level1Pressed: window.state = "arenaCol1Level1"

    }

    ArenaCol1Level1 {
        id: arenaC1L1
        onSelectAttackPressed: window.state = "selectAttackPressed"

    }





    // menuScene is our first scene, so set the state to menu initially
    state: "menu"
    activeScene: menuScene

    // state machine, takes care reversing the PropertyChanges when changing the state, like changing the opacity back to 0
    states: [
        State {
            name: "menu"
            PropertyChanges {target: menuScene; opacity: 1}
            PropertyChanges {target: window; activeScene: menuScene}
        },
        State {
            name: "selectLevel"
            PropertyChanges {target: loadScene; opacity: 1}
            PropertyChanges {target: window; activeScene: loadScene}
        },
        State {
            name: "newGame"
            PropertyChanges {target: newGameScene; opacity: 1}
            PropertyChanges {target: window; activeScene: newGameScene}
        },
        State {
            name: "welcome"
            PropertyChanges {target: welcomeScene; opacity: 1}
            PropertyChanges {target: window; activeScene: welcomeScene}
        },
        State {
            name: "home"
            PropertyChanges {target: homeScene; opacity: 1}
            PropertyChanges {target: window; activeScene: homeScene}
        },
        State {
            name: "story"
            PropertyChanges {target: introStoryScene; opacity: 1}
            PropertyChanges {target: window; activeScene: introStoryScene}
        },

        State {
            name: "arenaSelect"
            PropertyChanges {target: arenaSelect; opacity: 1}
            PropertyChanges {target: window; activeScene: arenaSelect}
                },

        State {
            name: "arenaCol1Menu"
            PropertyChanges {target: arenaSelectCol1Menu; opacity: 1}
            PropertyChanges {target: window; activeScene: arenaSelectCol1Menu}
        },

        State {
            name: "arenaCol1Level1"
            PropertyChanges {target: window; activeScene: arenaC1L1}
            PropertyChanges {target: arenaC1L1; opacity: 1}
        },
        
        State {
            name: "selectAttackPressed"
            PropertyChanges {target: arenaC1L1; opacity: 1}
            PropertyChanges {target: window; activeScene: arenaC1L1}
            PropertyChanges {target: weapon1; hitChanceBonus: 15} 
            PropertyChanges {target: weapon1; defenseBonus: 0}
        },

        State {
            name: "selectDefensiveStancePressed"
            PropertyChanges {target: arenaC1L1; opacity: 1}
            PropertyChanges {target: window; activeScene: arenaC1L1}
            PropertyChanges {target: weapon2; hitChanceBonus: 0}
            PropertyChanges {target: weapon2; defenseBonus: 20}
        }

    ]
}
