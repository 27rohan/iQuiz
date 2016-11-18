//
//  Subject.swift
//  IQuiz
//
//  Created by Rohan Thakkar on 11/15/16.
//  Copyright © 2016 Rohan Thakkar. All rights reserved.
//

import UIKit

class Subject: NSObject {
    var title: String!
    var desc: String!
    var imageFile: String!
    var question: [Question] = []
}

