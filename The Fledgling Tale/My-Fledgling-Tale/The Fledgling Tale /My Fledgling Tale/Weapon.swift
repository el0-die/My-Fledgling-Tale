//
//  Weapon.swift
//  My Fledgling Tale
//
//  Created by Elodie Desmoulin on 07/01/2020.
//  Copyright © 2020 Elodie Desmoulin. All rights reserved.
//

import Foundation

enum WeaponType  {
    case bareHand
    case chain
    case blowpipe
    case hammer
    case axe
    case sickle
    case lullaby
    case staff
    case orb
    case scimitar
    case lance
    case dagger
    case bow
    case sword
    case forkAndKnife
}

class Weapon {
    let type : WeaponType
    let damage : Int
    let name : String
    
    init(type: WeaponType) {
        self.type = type
        switch self.type {
        case .bareHand:
            self.name = "Rien... Débrouille toi comme un grand"
            self.damage = 0
        case .chain:
            self.name = "Perfidy, les chaînes jumelles"
            self.damage = 20
        case .blowpipe:
            self.name = "Britney, la sarbacane empoisonnée"
            self.damage = 10
        case .hammer:
            self.name = "Gideon, le marteau du forgeron"
            self.damage = 20
        case .axe:
            self.name = "Rhitta, la hache divine"
            self.damage = 30
        case .sickle:
            self.name = "Arthémis, la serpe magique"
            self.damage = 10
        case .lullaby:
            self.name = "Lilium, la berceuse des Nymphes"
            self.damage = 20
        case .staff:
            self.name = "Apocalypse, le bâton-démon"
            self.damage = 10
        case .orb:
            self.name = "Aldan, l'orbe du chaos"
            self.damage = 20
        case .scimitar:
            self.name = "Angel's Tear, le cimeterre sacré"
            self.damage = 20
        case .lance:
            self.name = "Scylla, la lance de bronze"
            self.damage = 10
        case .dagger:
            self.name = "Whisper, la dague du dragon"
            self.damage = 20
        case .bow:
            self.name = "Bloodthirst, l'arc maudit"
            self.damage = 10
        case .sword:
            self.name = "Boneshaver, l'épée obsidienne"
            self.damage = 20
        case .forkAndKnife:
            self.name = "Itadakimasu, juste un couteau et une fourchette"
            self.damage = 30
        }
    }
}
