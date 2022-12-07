import UIKit
import AVFoundation

class quizViewController: UIViewController {

    let quizBrain = triviaBrain()
    var player: AVAudioPlayer!
    
    var gameMode = 0
    
    var theme = ""
    var quizTime = 0
    var remainingTime = 0
    var score = 0
    var questionsCount = 0
    var quizTimer = Timer()
    
    var rightAnswer = ""
    
    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var answerButtonOne: UIButton!
    @IBOutlet weak var answerButtonTwo: UIButton!
    @IBOutlet weak var answerButtonThree: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UI elements
        answerButtonOne.layer.cornerRadius = 20
        answerButtonTwo.layer.cornerRadius = 20
        answerButtonThree.layer.cornerRadius = 20
        
        quizTime = quizBrain.getTime(gamemode: gameMode)
        remainingTime = quizBrain.getTime(gamemode: gameMode)
        
        progressView.progress = quizBrain.getPercent(remainingTime: remainingTime, time: quizTime)
        timeLabel.text = String(remainingTime)
        
        //First question
        let question = quizBrain.getQuestion(theme: theme)
        rightAnswer = question.answers[0]
        updateUI(question: question)
        
        
        //Timer
        quizTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { [self] timer in
            self.remainingTime -= 1
            timeLabel.text = String(self.remainingTime)
            progressView.progress = quizBrain.getPercent(remainingTime: remainingTime, time: quizTime)
            if remainingTime == 0 {
                timer.invalidate()
                performSegue(withIdentifier: "goToResult", sender: self)
            }
            })    
    }
    
    
    @IBAction func asnwerButtonClicked(_ sender: UIButton) {
        let playerAnswer = sender.currentTitle!
        
        var buttonColor = UIColor.red
        if playerAnswer == rightAnswer {
            score += 1
            buttonColor = .green
        }
        else {
            if gameMode == 1 {
                performSegue(withIdentifier: "goToResult", sender: self)
            }
        }

        sender.backgroundColor = buttonColor
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) { [self] in
            self.questionsCount += 1
            let newQuestion = self.quizBrain.getQuestion(theme: theme)
            self.rightAnswer = newQuestion.answers[0]
            updateUI(question: newQuestion)
        }
    }
    
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        if gameMode == 0 {
            performSegue(withIdentifier: "backToThemes", sender: self)
        } else {
            performSegue(withIdentifier: "backToMenu", sender: self)
        }
    }
    
    
    //Data flow to next screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! resultViewController
            destinationVC.score = self.score
            destinationVC.questionsCount = self.questionsCount
            destinationVC.theme = self.theme
            destinationVC.gameMode = self.gameMode
        }
        
        if segue.identifier == "backToThemes" {
            let destinationVC = segue.destination as! selectViewController
            destinationVC.gameMode = self.gameMode
        }
    }

    func updateUI(question: Question) {
        scoreLabel.text = "Score: \(score)"
        questionTextLabel.text = question.text
        let answers = question.answers.shuffled()
        answerButtonOne.setTitle(answers[0], for: .normal)
        answerButtonOne.backgroundColor = .white
        answerButtonTwo.setTitle(answers[1], for: .normal)
        answerButtonTwo.backgroundColor = .white
        answerButtonThree.setTitle(answers[2], for: .normal)
        answerButtonThree.backgroundColor = .white
        
        if gameMode == 1 {
            remainingTime = quizBrain.getTime(gamemode: gameMode) + 1
        }
    }
    
    func playSound(sound: String) {
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
