import VPlay 2.0
import QtQuick 2.0
//see https://v-play.net/doc/vplay-entity-concept/
import "../actor"



EntityBase {

    id: gladiatorTwoHand

    entityType: "gladiatorTwoHand"



    property int health: 100//default health to be set on an individual entity basis\
    property variant weapon
    property int combatStance
    property variant wepprof
    property string name
    property variant wepInHand: base2Hand
    property bool player: false


    // im thinking weapons will be its own entity, and we will inheret them, with generated stats, to put in a gladiators hand.

    // I think this will be used later to detect hits and attacks



    MultiResolutionImage {
                source: "../../assets/sprites/2Handed.png"

            }

    Weapon {
        id: base2Hand
        hitChance: 50
        baseDamage: 20
        hitChanceBonus: 0
    }







 }



