//
//  Character.swift
//  My Fledgling Tale
//
//  Created by Elodie Desmoulin on 07/01/2020.
//  Copyright © 2020 Elodie Desmoulin. All rights reserved.
//

import Foundation

enum CharacterType : String {
    case assassin
    case barabarian
    case druid
    case necromancer
    case paladin
    case thief
}

class Character {
    let message = Message()
    let myHero : CharacterType
    var faction : String
    var name : String = ""
    var hp : Int{
        //Character's death when hp = 0
        didSet {
            if hp < 0 {
                self.hp = 0
            }
        }
    }
    let maxHp : Int
    let dmg : Int
    let mana : Int
    var weapon : Weapon = .bareHand
    var finalDmg : Int {
        return self.dmg + weapon.damage
    }
    var description: String {
        return "\(name) -> \(faction)  Vie: \(hp)/\(maxHp)"
    }
    
    init(myHero: CharacterType, hp: Int, maxHp: Int, dmg: Int, mana: Int) {
        self.myHero = myHero
        switch self.myHero {
        case .assassin:
            self.faction = "L'Asssassin"
            self.hp = 100
            self.maxHp = 100
            self.dmg = 20
            self.mana = 30
        case .barabarian:
            self.faction = "Le Barbare "
            self.hp = 100
            self.maxHp = 100
            self.dmg = 30
            self.mana = 0
        case .druid:
            self.faction = "La Druidesse"
            self.hp = 90
            self.maxHp = 90
            self.dmg = 10
            self.mana = 50
        case .necromancer:
            self.faction = "Le Nécromancien"
            self.hp = 100
            self.maxHp = 100
            self.dmg = 15
            self.mana = 40
        case .paladin:
            self.faction = "Le Paladin"
            self.hp = 120
            self.maxHp = 120
            self.dmg = 25
            self.mana = 10
        case .thief:
            self.faction = "La Voleuse"
            self.hp = 110
            self.maxHp = 110
            self.dmg = 20
            self.mana = 20
        }
    }
    
    func attack(target : Character){
        target.hp -= self.finalDmg
        print("""
                    ------------------------------------------
                    La vie de \(target.name) n'est plus qu'a \(target.hp) PV
                    ------------------------------------------
            """)
    }
    
    func heal(blessedOne : Character) {
        if blessedOne.hp < blessedOne.maxHp {
            blessedOne.hp += self.mana
            if (blessedOne.hp + self.mana) < blessedOne.maxHp {
            print("""
                    ------------------------------------------
                    Oh! Sainte Providence! \(blessedOne.name) se voit
                            remonter à \(blessedOne.hp) de vie.
                    ------------------------------------------
            """)
            }else{
                blessedOne.hp = blessedOne.maxHp
                print("""
                            ------------------------------------------
                            YEAY! \(blessedOne.name) est maintenant remonté à
                                bloque, il a \(blessedOne.hp) de vie.
                            ------------------------------------------
                """)
            }
        }else{
            print(message.fullHp)
            print("""
                    ------------------------------------------
                    \(blessedOne.name) est déjà a son maximum : \(blessedOne.maxHp) PV
                    ------------------------------------------
            """)
            return blessedOne.hp = blessedOne.maxHp
        }
    }
    
    func isAlive() -> Bool {
        if hp <= 0 {
            return false
        } else {
            return true
        }
    }
}
