//
//  QuizState.swift
//  IQuiz
//
//  Created by Rohan Thakkar on 11/15/16.
//  Copyright © 2016 Rohan Thakkar. All rights reserved.
//


import UIKit

class QuizState: NSObject {
    var questionCounter: Int!
    var questionAnsweredCorrectly: Int!
    var maxQuestion: Int!
    var answerPressed: Int = -1
    var isCorrect: Bool = false
}
