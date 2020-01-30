//
//  Chest.swift
//  My Fledgling Tale
//
//  Created by Elodie Desmoulin on 07/01/2020.
//  Copyright © 2020 Elodie Desmoulin. All rights reserved.
//

import Foundation

class Chest {
    
     func chestWeapon() -> Weapon {
        let randomNumber = Int.random(in: 1...6)
        switch randomNumber {
            case 1: return .init(type: .chain)
            case 2: return .init(type: .blowpipe)
            case 3: return .init(type: .hammer)
            case 4: return .init(type: .axe)
            case 5: return .init(type: .sickle)
            case 6: return .init(type: .lullaby)
            case 7: return .init(type: .staff)
            case 8: return .init(type: .orb)
            case 9: return .init(type: .scimitar)
            case 10: return .init(type: .lance)
            case 11: return .init(type: .dagger)
            case 12: return .init(type: .bow)
            case 13: return .init(type: .sword)
            case 14: return .init(type: .forkAndKnife)
        default:
            return .init(type: .bareHand)
        }
    }

    func randomWeapon(character: Character) {
        character.weapon = chestWeapon()
    }
    
    func randomChest() -> Bool {
        let randomNumber = Int.random(in: 1...5)
        if randomNumber == 3 {
            return true
        } else {
            return false
        }
   }
}
