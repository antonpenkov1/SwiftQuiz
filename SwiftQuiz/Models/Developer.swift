//
//  Developer.swift
//  SwiftQuiz
//
//  Created by Варвара Уткина on 11.01.2024.
//

struct Developer {
    let name: String
    let role: Role
    let developedQuiz: String
    let photo: String
}

enum Role: String {
    case teamLead = "Teamlead"
    case developer = "Developers"
}
