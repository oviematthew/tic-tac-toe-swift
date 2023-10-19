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
        
        //disable that button after clicking it
        sender.isEnabled = false
        
        //Change the player
        changePlayer()
    }
    
    private func changePlayer(){
        if playerPiece == "X"{
            playerPiece = "O"
        }
        else {
            playerPiece = "X"
        }
        
    }
    
}

