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



    // im thinking weapons will be its own entity, and we will inheret them, with generated stats, to put in a gladiators hand.

    Connections {
         target: arenaC1L1
         onPlayerAttackEnemy: {
           // compare the monsters entityId with the on that is passed from the signal
           if(enemyBlade.entityId == entityId) {
             getShot()
           }
         }
       }

       function getShot() {
         visible = false
       }


    MultiResolutionImage {
                source: "../../assets/sprites/BLADE.png"

            }

    Weapon {
        id: baseBlade
        hitChance: 50
        baseDamage: 20
        hitChanceBonus: 0
        totalHitChance: baseBlade.hitChance + baseBlade.hitChanceBonus
    }







    }

