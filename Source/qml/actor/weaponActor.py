# -*- coding: utf-8 -*-
import Actor.py

try:
    from PySide import QtWidgets
except:
    from PyQt5 import QtWidgets


class WeaponActor(Actor):
    def __init__(self, name, qualityTier, hitChance, healthBonus):

        Actor.__init__(self, name):
        self.qualityTier = qualityTier
        self.hitChance = hitChance
        self.healthBonus = healthBonus

    def GetInfo(self):
        return self.Name() + ", " + self.qualityTier + ", " + self.hitChance + ", " + self.healthbonus


   gladius = WeaponActor("Gladius", 1, 50, 10)

   print(gladius.GetInfo)


