//
//  ViewController.swift
//  TictacToe
//
//  Created by Matthew Ovie Enamuotor on 19/10/2023.
//

import UIKit

class ViewController: UIViewController {

    private var playerPiece = "X"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSquareTapped(_ sender: UIButton) {
        
        //Game's first player is X
        sender.setTitle(playerPiece, for: .normal)
        print(sender.currentTitle ?? "" )
        print(sender.tag)
        
        //disable that button after clicking it
        sender.isEnabled = false
        
        //Change the player
        changePlayer()
        
        //Check for who won the game
        winGame()
        
        
        
        func winGame() {
            // Define the winning combinations for the top rows
            let winCombinations = [
                [0, 1, 2], // Top row
                [3, 4, 5], // Middle row
                [6, 7, 8]  // Bottom row
            ]

            for combination in winCombinations {
                // Check if the player has all three squares in the combination
                if combination.allSatisfy({ tag in
                    if let button = view.viewWithTag(tag) as? UIButton {
                        return button.currentTitle == playerPiece
                    }
                    return false
                }) {
                    // Player has won
                    let alertController = UIAlertController(title: "Game Won", message: "Player \(playerPiece) wins", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alertController.addAction(okAction)
                    present(alertController, animated: true, completion: nil)
                    return
                }
            }
        }

    }
    
    private func changePlayer(){
        if playerPiece == "X"{
            playerPiece = "O"
        }
        else {
            playerPiece = "X"
        }
        
        //playerPiece = playerPiece == "X" ? "O" : "X"
        
    }
    
    
    
}

