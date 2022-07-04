//
//  Question.swift
//  Quizz Apps
//
//  Created by Symoon Zadid on 5/6/22.
//

import Foundation

class Question {
    let text : String
    let firstOption : String
    let secondOption : String
    let thirdOption : String
    let forthOption : String
    let answer : String
    
    init(q:String, a:String,b:String,c:String,d:String,ans:String) {
       
        self.text = q
        self.firstOption = a
        self.secondOption = b
        self.thirdOption = c
        self.forthOption = d
        self.answer = ans
    }
}
