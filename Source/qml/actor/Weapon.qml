import VPlay 2.0
import QtQuick 2.0

EntityBase {
    id: weapon

    entityType: "weapon"

    property real hitChance //real == double
    property int healthBonus
    property real hitChanceBonus
    property real baseDamage
    property variant wepType
    property real totalHitChance: hitChance + hitChanceBonus
    


    // im thinking weapons will be its own entity, and we will inheret them, with generated stats, to put in a gladiators hand.

    // I think this will be used later to detect hits and attacks
    signal strike



}


