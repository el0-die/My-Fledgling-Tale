//
//  Menu.swift
//  My Fledgling Tale
//
//  Created by Elodie Desmoulin on 20/01/2020.
//  Copyright © 2020 Elodie Desmoulin. All rights reserved.
//

import Foundation

class Menu {
    
    func displayMenu() {
        print(message.gameTitle)
        if hasStartNewGame() {
            play()
        }else{
            credit()
        }
    }

    // MARK: - Private
    
    private let message = Message()
    private let game = Game()
    
    private func play() {
        game.beginGame()
        game.fight()
    }
    
    private func credit() {
        print(message.myCredit)
        game.restartToMenu()
    }
    
    private func hasStartNewGame()->Bool{
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
        return hasStartNewGame()
    }
}
