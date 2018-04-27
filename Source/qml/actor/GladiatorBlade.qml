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
    property int totalHitChance: baseBlade.hitChance + gladiatorBlade.hitChanceBonus





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
        property int hitChance: 50
        property int baseDamage: 20

    }


    function attackEnemy(entityId) {
            arenaC1L1.playerAttackEnemy(entityId)
    }

    Connections {
         target: arenaC1L1
         onEnemyAttackPlayer: {
           if(Math.random() * 100 <= gladiatorBlade.totalHitChance) {
             getHit()
           }
         }
       }

       function getHit() {
         gladiatorBlade.health = gladiatorBlade.health - baseBlade.baseDamage


      }
    }







