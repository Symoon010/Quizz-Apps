//
//  ViewController.swift
//  Quizz Apps
//
//  Created by Symoon Zadid on 2/6/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var countProgressBar: UIProgressView!
    
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var forthButton: UIButton!
    var QuizStote = QuizStore()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer =  sender.currentTitle ?? ""
        print(userAnswer)
        
        let getResponse = QuizStote.getAnswer(userAnswer)
        
        if getResponse {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        QuizStote.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    @objc func updateUI() {
        questionLabel.text = QuizStote.getText()
        firstButton.backgroundColor = UIColor.darkGray
        secondButton.backgroundColor = UIColor.darkGray
        thirdButton.backgroundColor = UIColor.darkGray
        forthButton.backgroundColor = UIColor.darkGray
        firstButton.setTitle(QuizStote.getFirstQuestion(), for: .normal)
        secondButton.setTitle(QuizStote.getSecondQuestion(), for: .normal)
        thirdButton.setTitle(QuizStote.getThirdQuestion(), for: .normal)
        forthButton.setTitle(QuizStote.getForthQuestion(), for: .normal)
        scoreLabel.text = "Score : \(QuizStote.getScore())"
        countProgressBar.progress = QuizStote.getProgressScore()
    }
        
        
    
}

