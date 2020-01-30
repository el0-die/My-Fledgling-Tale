//
//  Player.swift
//  My Fledgling Tale
//
//  Created by Elodie Desmoulin on 07/01/2020.
//  Copyright © 2020 Elodie Desmoulin. All rights reserved.
//

import Foundation

class Player {
    var name : String
    var team : [Character] = []
    static var charactersNames : [String] = []
    let message = Message()
    
    init(name : String) {
        self.name = name
    }

    func createTeam() {
        print(message.helloPresentation)
        while team.count < 3 {
            print("""
                        ------------------------------------------
                            Il vous reste encore \(3 - team.count) membre(s) à
                                        sélectionner
                        ------------------------------------------
                """)
            let entry = readLine()
            if let playerChoice = entry {
                var character : Character?
                
                switch playerChoice {
                    
                case "1":
                    character = Character(myHero: .assassin, hp: 100, maxHp: 100, dmg: 20, mana: 30)
                case "2":
                    character = Character(myHero: .barabarian, hp: 90, maxHp: 90, dmg: 30, mana: 0)
                case "3":
                    character = Character(myHero: .druid, hp: 90, maxHp: 90, dmg: 10, mana: 50)
                case "4":
                    character = Character(myHero: .necromancer, hp: 100, maxHp: 100, dmg: 15, mana: 40)
                case "5":
                    character = Character(myHero: .paladin, hp: 120, maxHp: 120, dmg: 25, mana: 10)
                case "6":
                    character = Character(myHero: .thief, hp: 110, maxHp: 110, dmg: 20, mana: 20)
                default:
                    print(message.wrongAnswer1)
                }
                if let char = character {
                    print("""
                            ------------------------------------------
                                Vous avez choisi \(char.faction)
                            ------------------------------------------
                    """)
                    print(message.characterNameChoice)
                    char.name = setName()
                    team.append(char)
                    print("""
                            ------------------------------------------
                            \(char.name) fait maintenant parti de l'équipée
                            ------------------------------------------
                    """)
                } else {
                    print(message.unvalidFactionChoice)
                }
            }
        }
        print(message.teamIntroduction)
        team.forEach {
            print("\($0.description)")
        }
    }

    func setName()-> String{
        if let name = readLine(){
            if name.count > 2{
                if (availableName(unuseName: name)){
                    return name
                }else{
                    print(message.alreadyUsedName)
                }
            } else {
                print(message.nameMissing)
            }
        }
        return setName()
    }
    
    func availableName(unuseName: String)-> Bool{
        if Player.charactersNames.contains (unuseName.lowercased()){
            return false
        }else{
            Player.charactersNames.append(unuseName.lowercased())
            return true
        }
    }
    
    func stayAlive() -> Bool {
            for character in team {
                if character.isAlive(){
                    return true
                }
            }
            return false
        }
    
    func removeDeadCharacter() {
        var index = 0
        for character in team {
            if character.hp == 0 {
                print("\(character.name) vient de mourir.")
                team.remove(at: index)
                print("Il vous reste \(team.count) collègue(s)")
            }
            index += 1
        }
    }
}
