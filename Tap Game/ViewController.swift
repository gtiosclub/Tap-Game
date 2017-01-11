//
//  ViewController.swift
//  Tap Game
//
//  Created by Kevin Randrup on 1/10/17.
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerOneScore: UILabel!
    @IBOutlet weak var playerTwoScore: UILabel!
    
    var playerOneTapCount = 0
    var playerTwoTapCount = 0
    
    var isGameStarted = false
    
    @IBAction func start(_ sender: UIButton) {
        sender.isEnabled = false

        isGameStarted = true
        playerOneTapCount = 0
        playerTwoTapCount = 0
        
        updateUI()
        let _ = Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (timer) in
            sender.isEnabled = true
            self.isGameStarted = false
        }
    }

    @IBAction func playerOneTap(_ sender: UIButton) {
        playerOneTapCount += 1
        updateUI()
    }
    
    @IBAction func playerTwoTap(_ sender: UIButton) {
        playerTwoTapCount += 1
        updateUI()
    }
    
    func updateUI() {
        if isGameStarted {
            playerOneScore.text = "Player 1 Score: \(playerOneTapCount)"
            playerTwoScore.text = "Player 2 Score: \(playerTwoTapCount)"
        }
    }
}

