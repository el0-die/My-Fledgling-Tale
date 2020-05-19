//
//  Weapon.swift
//  My Fledgling Tale
//
//  Created by Elodie Desmoulin on 07/01/2020.
//  Copyright © 2020 Elodie Desmoulin. All rights reserved.
//

import Foundation

enum Weapon  {
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

    var damage: Int {
        switch self {
        case .bareHand:
            return 0
        case .chain:
            return 20
        case .blowpipe:
            return 10
        case .hammer:
            return 20
        case .axe:
            return 30
        case .sickle:
            return 10
        case .lullaby:
            return 20
        case .staff:
            return 10
        case .orb:
            return 20
        case .scimitar:
            return 20
        case .lance:
            return 10
        case .dagger:
            return 20
        case .bow:
            return 10
        case .sword:
            return 20
        case .forkAndKnife:
            return 30
        }
    }

    var name: String {
        switch self {
        case .bareHand:
            return "Rien... Débrouille toi comme un grand"
        case .chain:
            return "Perfidy, les chaînes jumelles"
        case .blowpipe:
            return "Britney, la sarbacane empoisonnée"
        case .hammer:
            return "Gideon, le marteau du forgeron"
        case .axe:
            return "Rhitta, la hache divine"
        case .sickle:
            return "Arthémis, la serpe magique"
        case .lullaby:
            return "Lilium, la berceuse des Nymphes"
        case .staff:
            return "Apocalypse, le bâton-démon"
        case .orb:
            return "Aldan, l'orbe du chaos"
        case .scimitar:
            return "Angel's Tear, le cimeterre sacré"
        case .lance:
            return "Scylla, la lance de bronze"
        case .dagger:
            return "Whisper, la dague du dragon"
        case .bow:
            return "Bloodthirst, l'arc maudit"
        case .sword:
            return "Boneshaver, l'épée obsidienne"
        case .forkAndKnife:
            return "Itadakimasu, juste un couteau et une fourchette"
        }
    }
}
