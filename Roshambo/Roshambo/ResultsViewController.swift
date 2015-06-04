//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Jorden Schreck on 6/4/15.
//  Copyright (c) 2015 Jorden Schreck. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    //MARK Outlets
    
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var resultsImage: UIImageView!
    
    //MARK Choices
    
    var userChoice: String!
    var opponentChoice: String!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let choices = ["Rock", "Paper", "Scissors"]
        let randomIndex = Int(arc4random() % 3)
        opponentChoice = choices[randomIndex]
        
        displayResult()
    }
    
    // MARK: the displayResult method generates the image and message for the results of a match
    
    private func displayResult() {
        
        var imageName: String
        var text: String
        var youWon: Bool = false
        let matchup = "\(userChoice) vs. \(opponentChoice)"
        
        // Handle the tie
        if userChoice == opponentChoice {
            resultsImage.image = UIImage(named: "tie")
            resultsLabel.text = "\(matchup): it's a tie!"
            return
        }
        
        // Create the text
        if youWon {
            text = "You Won! \(matchup)"
            imageName = "\(userChoice)-\(opponentChoice)".lowercaseString
        } else {
            text = "You Lost! \(matchup)"
            imageName = "\(opponentChoice)-\(userChoice)".lowercaseString
        }
        
        // Otherwise, figure out if you won or lost
        switch (userChoice) {
            
            case "Rock":
                youWon = opponentChoice == "Scissors"
            
            case "Paper":
                youWon = opponentChoice == "Rock"
            
            default: // Scissors
                youWon = opponentChoice == "Paper"
        }
        
        // Update the UI components
        resultsImage.image = UIImage(named: imageName)
        resultsLabel.text = text
    }
    
    
    @IBAction private func playAgain() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
}