//
//  QuizModel.swift
//  QuizApp
//
//  Created by Lu Maw on 02/09/2023.
//

import Foundation
struct Topic {
    let title: String
    let description: String
    let videoId: String
}
struct QuizQuestion {
    let question: String
    let options: [String]
    let correctAnswerIndex: Int
}
