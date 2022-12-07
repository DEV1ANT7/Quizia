//
//  ViewController.swift
//  Trivia
//
//  Created by David Soukup on 06.12.2022.
//

import UIKit

class mainViewController: UIViewController {

    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var endlessButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = 20
        endlessButton.layer.borderWidth = 3
        endlessButton.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        endlessButton.layer.cornerRadius = 20
    }
    
    
    @IBAction func endlessButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "endlessGoToThemes", sender: self)
    }
    
    @IBAction func playButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "playGoToThemes", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "playGoToThemes" {
            let destinationVC = segue.destination as! selectViewController
            destinationVC.gameMode = 0
        }
        
        if segue.identifier == "endlessGoToThemes" {
            let destinationVC = segue.destination as! selectViewController
            destinationVC.gameMode = 1
        }
        
        
    }
    
    
}

