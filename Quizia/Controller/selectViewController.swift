//
//  selectViewController.swift
//  Trivia
//
//  Created by David Soukup on 06.12.2022.
//

import UIKit

class selectViewController: UIViewController {

    var choosedTheme = ""
    var gameMode = 0
    
    @IBOutlet weak var generalView: UIView!
    @IBOutlet weak var scienceVIew: UIView!
    @IBOutlet weak var historyView: UIView!
    @IBOutlet weak var geographyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        generalView.layer.cornerRadius = 20
        scienceVIew.layer.cornerRadius = 20
        historyView.layer.cornerRadius = 20
        geographyView.layer.cornerRadius = 20
        
    }
    
    @IBAction func topicButtonPressed(_ sender: UIButton) {
        choosedTheme = sender.title(for: .selected)!
        performSegue(withIdentifier: "goToQuiz", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToQuiz" {
            let destinationVC = segue.destination as! quizViewController
            destinationVC.theme = choosedTheme
            destinationVC.gameMode = gameMode        }
    }
    

}
