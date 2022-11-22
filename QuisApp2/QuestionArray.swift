//
//  QuestionArray.swift
//  QuisApp2
//
//  Created by Anusha on 15/11/22.
//

import Foundation
class QuestionArray{
    
    var quiz = [File]()
    
    init(){
        
        quiz.append(File(question: " Hey there...", optionOne: "YES", optionTwo: "NO", answer: "YES"))
        quiz.append(File(question: "hello haii", optionOne: "YES", optionTwo: "NO", answer: "NO"))
    }
}
