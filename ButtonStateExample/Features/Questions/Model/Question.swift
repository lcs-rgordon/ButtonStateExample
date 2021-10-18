//
//  Question.swift
//  ButtonStateExample
//
//  Created by Russell Gordon on 2021-10-18.
//

import Foundation

struct Question {
    
    let prompt: String
    let correctResponse: String
    let incorrectResponses: [String]
    
}

extension Question {
    
    static let dummyData = Question(prompt: "In what year was Lakefield College School founded?",
                                    correctResponse: "1879",
                                    incorrectResponses: [
                                        "1978",
                                        "1778",
                                        "1920",
                                    ])
    
}
