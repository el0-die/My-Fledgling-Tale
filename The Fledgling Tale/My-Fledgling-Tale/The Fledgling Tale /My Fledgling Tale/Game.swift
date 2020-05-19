//
//  Game.swift
//  My Fledgling Tale
//
//  Created by Elodie Desmoulin on 07/01/2020.
//  Copyright © 2020 Elodie Desmoulin. All rights reserved.
//

import Foundation

class Game{
    
    func beginGame(){
        print(message.helloPlayer1)
        team1.createTeam()
        print(message.helloPlayer2)
        team2.createTeam()
    }
        
    func fight() {
        var attacker = team1
        var opponent = team2
        
        while team1.stayAlive() && team2.stayAlive() {
            numberOfRounds += 1
            attacker.removeDeadCharacter()
            print(message.whichCharacter)
                let fighterCharacter : Character = selectCharacter(in: attacker)
                print("""
                                         ----------
                                Vous avez jeté votre dévolu sur :
                                \(fighterCharacter.name) | \(fighterCharacter.faction)
                                         ----------
                """)
                showRandomlyChest(luckyOne: fighterCharacter)
                if wantToAttack() {
                    print(message.whichTarget)
                    let opponentCharacter : Character = selectCharacter(in: opponent)
                    print("""
                                            ----------
                                    Le malheureux élu est donc :
                                       \(opponentCharacter.name) | \(opponentCharacter.faction)
                                            ----------
                    """)
                    fighterCharacter.attack(target : opponentCharacter)
                    counterAttack += 1
                }else{
                    print(message.whichToHeal)
                    let blessedOneCharacter : Character = selectCharacter(in: attacker)
                    print("""
                                                 ----------
                                          L'heureux élu est donc :
                                        \(blessedOneCharacter.name) | \(blessedOneCharacter.faction)
                                                 ----------
                    """)
                    fighterCharacter.heal(blessedOne: blessedOneCharacter)
                    counterHeal += 1
                }
                swap(&attacker , &opponent)
            }
        getGameWinner()
    }

    func restartToMenu() {
        let menu = Menu()
        print(message.restart)
        let entry = readLine()
            if let playerChoice = entry {
                switch playerChoice {
                case "1":
                    return menu.displayMenu()
                case "2":
                    print(message.sayBye)
                default:
                    print(message.wrongAnswer1)
                }
            }
    }

    // MARK: - Private

    private var team1 = Player(name: "Joueur 1")
    private var team2 = Player(name: "Joueur 2")
    private var numberOfRounds = 0
    private var chestAppearance = 0
    private var counterAttack = 0
    private var counterHeal = 0
    private let message = Message()

    private func getGameWinner() {
        let winner: String
        if team1.team.count > team2.team.count {
            winner = team1.name
        } else {
            winner = team2.name
        }
        print(message.congratWinner)
        print("""
                                ----------
                                 \(winner)
                                ----------
        """)
        recapStat()
    }

    private func wantToAttack()->Bool{
        print(message.choiceAttackOrHeal)
        let entry = readLine()
        if let playerChoice = entry {
            switch playerChoice {
            case "1":
                return true
            case "2":
                return false
            default:
                print(message.wrongAnswer1)
            }
        }
        return wantToAttack()
    }
    
    private func selectCharacter(in player: Player)-> Character {
        for (index, character) in player.team.enumerated(){
            print("\(index + 1) - \(character.faction) | \(character.name) | Vie: \(character.hp)/\(character.maxHp) | Attaque: \(character.dmg) | Magie: \(character.mana)")
        }
        if let selected = readLine(){
            if let selectedInt = Int(selected){
                if selectedInt > 0 && selectedInt <= player.team.count {
                return player.team[selectedInt-1]
            } else {
                    print(message.wrongAnswer2)
                }
            }
        }
        print(message.wrongAnswer3)
        return selectCharacter(in: player)
    }
    
    private func showRandomlyChest(luckyOne: Character) {
        let chest = Chest()
        if chest.isChestAppeared() == true {
            chestAppearance += 1
            print(message.chestAppearance)
            chest.attributeNewWeapon(to: luckyOne)
            print(message.discoverChestWeapon)
            print("""
                    ------------------------------------------
                    \(luckyOne.name) | \(luckyOne.faction) est maintenant équipé
                    de "\(luckyOne.weapon.name)". Un bonus de \(luckyOne.weapon.damage) de dégats
                        supplémentaires lui sont octroyés.
                    ------------------------------------------
            """)
        }
    }
        
    private func recapStat() {
        print("""
                ------------------------------------------
                    Nombre de tours réalisés: \(numberOfRounds)
                    Nombre d'apparition(s) du coffre: \(chestAppearance)
                    Nombre d'attaques réalisées: \(counterAttack)
                    Nombre de soins prodigués: \(counterHeal)
                ------------------------------------------
        """)
        restartToMenu()
    }

}
