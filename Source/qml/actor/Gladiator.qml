import VPlay 2.0
import QtQuick 2.0

//this is like js and im totally learning here

EntityBase {

    entityId: "gladiator"
    entityType: "gladiator"

    Rectangle {
        width: 50
        height: 50
        color: "red"
    }

    property int health: 100 //default health to be set on an individual entity basis

    property Entity weapon // im thinking weapons will be its own entity, and we will inheret them, with generated stats, to put in a gladiators hand.

    property type name: value






}
