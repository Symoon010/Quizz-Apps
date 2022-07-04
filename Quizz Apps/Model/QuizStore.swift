//
//  QuizStore.swift
//  Quizz Apps
//
//  Created by Symoon Zadid on 5/6/22.
//

import Foundation

struct QuizStore {
    let quizDetails = [
       Question(q: "What is the Capital of Bangladesh", a: "Rajshahi", b: "Dhaka", c: "Rangpur", d: "Barishal", ans: "Dhaka"),
       Question(q: "What is the national animal of bangladesh", a: "Cow", b: "Deer", c: "Tiger", d: "Dog", ans: "Tiger"),
       Question(q: "What is the national flag color of bangladesh", a: "Red & White", b: "Black & White ", c: "Blue & Red", d: "Green & Red", ans: "Green & Red")
    ]
    var questionNumber = 0
    var solveCount = 0 ;
    mutating func getAnswer(_ userAnswer:String) -> Bool {
        if userAnswer == quizDetails[questionNumber].answer {
            solveCount+=1
            return true;
        } else {
            return false
        }
    }
    
    func getProgressScore() -> Float {
        let progressValue =  Float(questionNumber + 1) / Float(quizDetails.count)
        return progressValue
    }
    func getText() -> String {
        return quizDetails[questionNumber].text
    }
    
    func getFirstQuestion() ->String {
        return quizDetails[questionNumber].firstOption
    }
    
    func getSecondQuestion() ->String {
        return quizDetails[questionNumber].secondOption
    }
    
    func getThirdQuestion() ->String {
        return quizDetails[questionNumber].thirdOption
    }
    func getForthQuestion() ->String {
        return quizDetails[questionNumber].forthOption
    }
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < quizDetails.count {
            questionNumber+=1
        } else {
            solveCount = 0
            questionNumber = 0
        }
    }
    func getScore () -> String {
        return String(solveCount)
    }    
    
}
