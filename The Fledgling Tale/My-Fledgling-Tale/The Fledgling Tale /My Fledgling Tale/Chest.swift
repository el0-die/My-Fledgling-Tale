//
//  Chest.swift
//  My Fledgling Tale
//
//  Created by Elodie Desmoulin on 07/01/2020.
//  Copyright © 2020 Elodie Desmoulin. All rights reserved.
//

import Foundation

class Chest {
    func attributeNewWeapon(to character: Character) {
        character.weapon = pickRandomWeapon()
    }
    
    func isChestAppeared() -> Bool {
        let randomNumber = Int.random(in: 1...3)
        if randomNumber == 2 {
            return true
        } else {
            return false
        }
   }

    private func pickRandomWeapon() -> Weapon {
        let randomNumber = Int.random(in: 1...14)
        switch randomNumber {
            case 1: return .chain
            case 2: return .blowpipe
            case 3: return .hammer
            case 4: return .axe
            case 5: return .sickle
            case 6: return .lullaby
            case 7: return .staff
            case 8: return .orb
            case 9: return .scimitar
            case 10: return .lance
            case 11: return .dagger
            case 12: return .bow
            case 13: return .sword
            case 14: return .forkAndKnife
        default:
            return .bareHand
        }
    }
}
