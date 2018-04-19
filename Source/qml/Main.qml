import VPlay 2.0
import QtQuick 2.0
import "scenes"

GameWindow {
    id: window
    screenWidth: 960
    screenHeight: 640


    // create and remove entities at runtime
    EntityManager {
        id: entityManager
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
        onSelectWeaponPressed: window.state = "welcome"
        onBackButtonPressed: window.state = "menu"
    }

    WelcomeScene {
         id: welcomeScene
         onSelectSkipPressed: window.state = "home"

     }
    HomeScene {
         id: homeScene

     }

    StoryScene {
         id: introStoryScene

         onSelectContinuePressed: window.state = "newGame"



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
        }
    ]
}