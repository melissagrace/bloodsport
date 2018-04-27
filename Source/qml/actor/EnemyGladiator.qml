import VPlay 2.0
import QtQuick 2.0
//see https://v-play.net/doc/vplay-entity-concept/
import "../actor"

EntityBase {
    id: enemyBlade

    entityType: "gladiatorBlade"



    property int health: 100//default health to be set on an individual entity basis\
    property variant weapon
    property int combatStance
    property variant wepprof
    property string name
    property variant wepInHand: baseBlade
    property bool player: false
    property int hitChanceBonus: 0




    // im thinking weapons will be its own entity, and we will inheret them, with generated stats, to put in a gladiators hand.

    Connections {
         target: arenaC1L1
         onPlayerAttackEnemy: {
           // compare the monsters entityId with the on that is passed from the signal
           if(Math.random() * 100 <= baseBlade.hitChance + gladiatorBlade.hitChanceBonus ) {
             getShot()
           }
         }
       }

       function getShot() {
         enemyBlade.health = enemyBlade.health - 20


       }

       function attackPlayer(entityId) {
               arenaC1L1.enemyAttackPlayer(entityId)
       }


    MultiResolutionImage {
                source: "../../assets/sprites/BLADE.png"
                height: 25
                width: 25

            }

    Weapon {
        id: baseBlade
        hitChance: 50
        baseDamage: 20
        totalHitChance: baseBlade.hitChance + baseBlade.hitChanceBonus
    }







    }

