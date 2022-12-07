//
//  resultViewController.swift
//  Quizia
//
//  Created by David Soukup on 07.12.2022.
//

import UIKit

class resultViewController: UIViewController {
    
    var score = 0
    var questionsCount = 0
    var theme = ""
    var gameMode = 0
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionsCountLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var chooseTopicButton: UIButton!
    @IBOutlet weak var mainMenuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playAgainButton.layer.cornerRadius = 20
        chooseTopicButton.layer.cornerRadius = 20
        mainMenuButton.layer.cornerRadius = 20
        mainMenuButton.layer.borderWidth = 3
        mainMenuButton.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        
        scoreLabel.text = String(score)
        if gameMode == 0 {
            questionsCountLabel.text = "out of \(questionsCount)"
        }
        else {
            questionsCountLabel.text = ""
        }
    }

    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "playAgain", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playAgain" {
            let destinationVC = segue.destination as! quizViewController
            destinationVC.theme = self.theme
            destinationVC.gameMode = self.gameMode
        }
    }
    

}
