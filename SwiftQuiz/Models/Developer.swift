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
    
    static func getDevelopers() -> [Developer] {
        let team: [Developer] = [
            Developer(
                name: "Антон",
                role: .teamLead,
                developedQuiz: "Самый могучий, сделал невозможное - собрал несобираемое",
                photo: "antonPhoto"
            ),
            Developer(
                name: "Варя",
                role: .developer,
                developedQuiz: "Фея экранов и не только. Продумала не только дизайн, но и логику этого экрана",
                photo: "varyaPhoto"
            ),
            Developer(
                name: "Костя",
                role: .developer,
                developedQuiz: "Чародей DataSource и логики ViewController. Все вопросики его заслуга",
                photo: "kostyaPhoto"
            ),
            Developer(
                name: "Саша",
                role: .developer,
                developedQuiz: "Волшебник TableView, создал экран со списком тем и эран с ошибками",
                photo: "sashaPhoto"
            )
            ]
        
        return team
    }
}

enum Role: String {
    case teamLead = "Teamlead"
    case developer = "Developers"
}
