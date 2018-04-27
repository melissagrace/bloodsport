import VPlay 2.0
import QtQuick 2.0

EntityBase {

    entityType: "weapon"

    property Entity weapon
    property real hitChance //real == double
    property int healthBonus
    property real hitChanceBonus
    property real defenseBonus
    property real baseDamage
    property variant wepType
    
    property alias wepType
    property alias hitChance
    property alias healthBonus
    property alias hitChanceBonus
    property alias defenseBonus
    property alias baseDamage
    property alias combatStance

    // im thinking weapons will be its own entity, and we will inheret them, with generated stats, to put in a gladiators hand.

    // I think this will be used later to detect hits and attacks
    signal strike



}


