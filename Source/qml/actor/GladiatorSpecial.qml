import VPlay 2.0
import QtQuick 2.0
//see https://v-play.net/doc/vplay-entity-concept/
import "../actor/Weapon.qml"

EntityBase {

    id: gladiatorSpecial
    entityType: "gladiatorSpecial"



    property int health: 100//default health to be set on an individual entity basis\
    property variant weapon
    property int combatStance
    property variant wepprof
    property string name
    property variant wepInHand: baseSpecial
    property bool player: false






    // im thinking weapons will be its own entity, and we will inheret them, with generated stats, to put in a gladiators hand.

    // I think this will be used later to detect hits and attacks
    signal strike
    signal struck
    property alias name: gladiatorSpecial.name
    property alias wepprof: gladiatorSpecial.wepprof
    property alias weapon: gladiatorSpecial.weapon
    property alias combatStance: gladiatorSpecial.combatStance
    property alias variationType: gladiatorSpecial.variationType
    property alias player: gladiatorSpecial.player

    MultiResolutionImage {
                source: "../../assets/sprites/Special.png"

            }

    Weapon {
        id: baseSpecial
        hitChance: 50
        baseDamage: 20
        hitChanceBonus: 0
    }




}

