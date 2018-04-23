import VPlay 2.0
import QtQuick 2.0
//see https://v-play.net/doc/vplay-entity-concept/

EntityBase {
    id: gladiatorBlade

    entityType: "gladiatorBlade"



    property int health: 100//default health to be set on an individual entity basis\
    property variant weapon
    property int combatStance
    property variant wepprof
    property string name

    // im thinking weapons will be its own entity, and we will inheret them, with generated stats, to put in a gladiators hand.

    // I think this will be used later to detect hits and attacks
    signal strike
    signal struck
    property alias name: gladiatorBlade.name
    property alias wepprof: gladiatorBlade.wepprof
    property alias weapon: gladiatorBlade.weapon
    property alias combatStance: gladiatorBlade.combatStance

    MultiResolutionImage {
                source: "../../assets/sprites/BLADE.png"

            }





}

