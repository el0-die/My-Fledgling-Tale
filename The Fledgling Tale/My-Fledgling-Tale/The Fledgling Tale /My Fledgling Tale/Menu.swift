//
//  Menu.swift
//  My Fledgling Tale
//
//  Created by Elodie Desmoulin on 20/01/2020.
//  Copyright © 2020 Elodie Desmoulin. All rights reserved.
//

import Foundation

class Menu {
    let message = Message()
    let game = Game()
    
    func play() {
        game.beginning()
        game.fight()
    }
    
    func credit() {
        print(message.myCredit)
        game.restart()
    }
    
    func startNewGame()->Bool{
        print(message.menuChoice)
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
        return startNewGame()
    }
    
    func displayMenu() {
        print(message.gameTitle)
        if startNewGame() {
            play()
        }else{
            credit()
        }
    }
}
