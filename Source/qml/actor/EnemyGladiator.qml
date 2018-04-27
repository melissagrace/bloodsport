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
    property variant wepInHand: baseBladeEnemy
    property bool player: false
    property int hitChanceBonus: 0
    property int totalHitChance: baseBladeEnemy.hitChance + gladiatorBlade.hitChanceBonus



    MultiResolutionImage {
                source: "../../assets/sprites/BLADE.png"
                height: 120
                width: 80

            }

    Weapon {
        id: baseBladeEnemy
        property int hitChance: 50
        property int baseDamage: 20
    }

    // im thinking weapons will be its own entity, and we will inheret them, with generated stats, to put in a gladiators hand.

    Connections {
         target: arenaC1L1
         onPlayerAttackEnemy: {
           if(Math.random() * 100 <= baseBladeEnemy.totalHitChance ) {
             getShot()
           }
         }
       }

<<<<<<< HEAD
       function getShot() {
         enemyBlade.health = enemyBlade.health - baseBladeEnemy.baseDamage


       }

       function attackPlayer(entityId) {
               arenaC1L1.enemyAttackPlayer(entityId)
       }

    }
=======
    function getShot() {
         enemyBlade.health = enemyBlade.health - 20
    }

    function attackPlayer(entityId) {
        arenaC1L1.enemyAttackPlayer(entityId)
    }

    MultiResolutionImage {
        source: "../../assets/sprites/BLADE.png"
        height: 100
        width: 100
    }

    Weapon {
        id: baseBlade
        hitChance: 50
        baseDamage: 20
        totalHitChance: baseBlade.hitChance + baseBlade.hitChanceBonus
    }
}
>>>>>>> 1e399ee36deeecd063525fe3aa03a19656ac1a2c

