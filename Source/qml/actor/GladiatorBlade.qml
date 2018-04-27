import VPlay 2.0
import QtQuick 2.0
//see https://v-play.net/doc/vplay-entity-concept/
import "../actor"

EntityBase {
    id: gladiatorBlade

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

    // I think this will be used later to detect hits and attacks
    signal strike
    signal struck


    MultiResolutionImage {
        source: "../../assets/sprites/BLADE.png"
        height: 200
        width: 200
    }

    Weapon {
        id: baseBlade
        hitChance: 50
        baseDamage: 20
        hitChanceBonus: 0
        totalHitChance: baseBlade.hitChance + baseBlade.hitChanceBonus
    }


    function attackEnemy(entityId) {
            arenaC1L1.playerAttackEnemy(entityId)
    }

    Connections {
         target: arenaC1L1
         onEnemyAttackPlayer: {
           // compare the monsters entityId with the on that is passed from the signal
           if(Math.random() * 100 <= baseBlade.hitChance + enemyBlade.hitChanceBonus ) {
             getHit()
           }
         }
    }

    function getHit() {
        gladiatorBlade.health = gladiatorBlade.health - 20
    }
}






