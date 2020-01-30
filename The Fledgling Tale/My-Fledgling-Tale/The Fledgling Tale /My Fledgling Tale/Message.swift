//
//  Message.swift
//  My Fledgling Tale
//
//  Created by Elodie Desmoulin on 15/01/2020.
//  Copyright © 2020 Elodie Desmoulin. All rights reserved.
//

import Foundation

class Message {
    
    let gameTitle = """
            ------------------------------------------
                         A FLEDGLING TALE
                               X
                        FrenchGame Factory
                       We know how to play !
            ------------------------------------------
    """
    let menuChoice = """
            ------------------------------------------
                              MENU :
                                
                            1 - JOUER -

                            2 - CREDITS -

            ------------------------------------------
    """
    let helloPresentation = """

            ------------------------------------------
               Lesquels de nos protagonistes auront
               l'immense honneur de faire partie de
                    votre héroïque équipée?
            ------------------------------------------
            ------------------------------------------
                                -1-
                        --- L'ASSASSIN ---
                                ---
                         -- Vie : 100 --
                        -- Attaque : 20 --
                         -- Mana : 30 --

            ------------------------------------------
                                -2-
                        --- LE BARBARE ---
                                ---
                          -- Vie : 90 --
                        -- Attaque : 30 --
                          -- Mana : 0 --

            ------------------------------------------
                                -3-
                       --- LA DRUIDESSE ---
                                ---
                          -- Vie : 90 --
                        -- Attaque : 10 --
                         -- Mana : 50 --

            ------------------------------------------
                                -4-
                     --- LE NECROMANCIER ---
                                ---
                         -- Vie : 100 --
                        -- Attaque : 15 --
                         -- Mana : 40 --

            ------------------------------------------
                                -5-
                        --- LE PALADIN ---
                                ---
                          -- Vie : 120 --
                        -- Attaque : 25 --
                          -- Mana : 10 --

            ------------------------------------------
                                -6-
                        --- LA VOLEUSE ---
                                ---
                          -- Vie : 110 --
                        -- Attaque : 20 --
                          -- Mana : 20 --

            ------------------------------------------

                            ----------
              Veuillez choisir, dans la liste ci-dessus,
               les 3 gais lurons qui vous protègeront
                    pendant cette aventure...
                            ----------

    """

    let helloPlayer1 = """
            ------------------------------------------
                        Salutation l'ami!
                    Comme le dit le vieil adage :
                   "Premier arrivé, premier servi"
                 Vous serez donc le Joueur 1 et le
                        premier à choisir.
            ------------------------------------------
    """
    let helloPlayer2 = """
            ------------------------------------------
            ------------------------------------------
                        Bien le bonjour!
              Comme l'a dit un jour un grand sage :
               "Après l'heure, c'est plus l'heure"
                Vous serez donc le Joueur 2 et le
                      deuxième à choisir.
            ------------------------------------------
    """
    let characterNameChoice = """
                            ----------
            ------------------------------------------
             Comment s'intitule le gai luron qui vous
                            accompagne?
            ------------------------------------------
                            ----------
    """
    let whichCharacter = """
            ------------------------------------------
                Qui va devoir exaucer votre volonté?
            ------------------------------------------
    """
    let choiceAttackOrHeal = """
            ------------------------------------------
                    Que souhaitez-vous faire?
                          1 - Attaquer
                          2 - Soigner
            ------------------------------------------
    """
    let whichTarget = """
            ------------------------------------------
                Choisissez la victime à victimiser
            ------------------------------------------
    """
    let whichToHeal = """
            ------------------------------------------
              Choisissez l'objet de votre générosité
            ------------------------------------------
    """
    let wrongAnswer1 = """
            ------------------------------------------
             Plaît-il? Je n'ai bien pas saisi ce que
                          vous avez dit...
            ------------------------------------------
    """
    let wrongAnswer2 = """
                                ----------
                                NANIIIII?!
                                ----------
    """
    let wrongAnswer3 = """
                                ----------
                Vous avez bu trop de cervoise à la taverne, non?
                                ----------
    """
    let chestAppearance = """
            ------------------------------------------
              Oh! Mais... ne serait-ce pas un coffre
                            que voilà?
                   Voyons voir ce qu'il contient:
            ------------------------------------------
    """
    let unvalidFactionChoice = """
            ------------------------------------------
                Je ne pense pas que vous soyez au
                            complet...
             A moins que vous n'essayez de recruter un
                             absent?!
            ------------------------------------------
    """
    let teamIntroduction = """
                            ----------
            ------------------------------------------
                        Voici votre équipe :
            ------------------------------------------
    """
    let alreadyUsedName = """
            ------------------------------------------
                            ----------
             Oupsi... Un autre protagoniste porte déjà
             ce mignon petit sobriquet. Il va falloir
               faire preuve de plus d'imagination...
                            ----------
            ------------------------------------------
    """
   let nameMissing = """
            ------------------------------------------
                            ----------
             Oupsi... Un autre protagoniste porte déjà
             ce mignon petit sobriquet. Il va falloir
               faire preuve de plus d'imagination...
                            ----------
           ------------------------------------------
    """
    let discoverChestWeapon = """
            ------------------------------------------
                    WAHOUUUUU! La belle arme!
            ------------------------------------------
    """
    let fullHp = """
                ------------------------------------------
                 Absurdité que voilà! Essayer de redonner
                  la santé à un guerrier en pleine forme!
                 Vous venez de perdre un tour pour rien...
                ------------------------------------------
    """
    let congratWinner = """
                            ----------
                    Félicitation, vous rafflez la
                             victoire!!
                    Un tonnerre d'applaudissement
                              pour le:
                            ----------
    """
    let myCredit = """
                            ----------
                          Game director:
                                 x
                           Flavio Louis
                            ----------
                            ----------
                          Game designer:
                                 x
                          Charlotte Adams
                            ----------
                            ----------
                          Game conceptor:
                                 x
                         Elodie Desmoulin
                            ----------
    """
    let restart = """
            ------------------------------------------
                    Souhaitez vous recommencer?

                        1 - Oui / 2 - Non
            ------------------------------------------
    """
    let sayBye = """
                            ----------
                    Ce fût un plaisir, à une
                        prochaine fois...
                            ----------
    """
}
