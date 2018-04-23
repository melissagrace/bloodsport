import VPlay 2.0
import QtQuick 2.0
//see https://v-play.net/doc/vplay-entity-concept/

EntityBase {
    id: gladiatorTwoHand

    entityType: "gladiatorTwoHand"



    property int health: 100//default health to be set on an individual entity basis\
    property variant weapon
    property int combatStance
    property variant wepprof
    property string name

    // im thinking weapons will be its own entity, and we will inheret them, with generated stats, to put in a gladiators hand.

    // I think this will be used later to detect hits and attacks
    signal strike
    signal struck
    property alias name: gladiator.name
    property alias wepprof: gladiator.wepprof
    property alias weapon: gladiator.weapon
    property alias combatStance: gladiator.combatStance

    MultiResolutionImage {
                source: "../../assets/sprites/2Handed.png"

            }






}

