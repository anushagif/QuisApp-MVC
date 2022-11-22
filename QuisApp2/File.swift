//
//  File.swift
//  QuisApp2
//
//  Created by Anusha on 15/11/22.
//

import Foundation

class File{
    let question: String
    let optionOne: String
    let optionTwo: String
    let answer: String
    
    init(question: String, optionOne: String, optionTwo: String, answer: String) {
        self.question = question
        self.optionOne = optionOne
        self.optionTwo = optionTwo
        self.answer = answer
    }
}
