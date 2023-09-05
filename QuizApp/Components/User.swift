//
//  Users.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//

import Foundation

struct User: Codable{
    let id : String
    let name : String
    let email : String
    let joined_date : TimeInterval
}
