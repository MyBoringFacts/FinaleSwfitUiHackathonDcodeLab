//
//  Questions.swift
//  TriviaGame
//
//  Created by Jessica Win on 2/9/2566 BE.
//

import Foundation

    
struct Result: Codable, Identifiable {
        // We need to set the ID inside of the closure, because the API doesn' return us an ID for each result
        var id = UUID()
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correctAnswer: String
        var incorrectAnswers: [String]
        
    }
    
