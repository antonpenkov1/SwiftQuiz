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
                developedQuiz: "Самый могучий, собрал несобираемое",
                photo: "antonPhoto"
            ),
            Developer(
                name: "Варя",
                role: .developer,
                developedQuiz: "Фея экранов. Создала этот экран и экран с опросами",
                photo: "varyaPhoto"
            ),
            Developer(
                name: "Костя",
                role: .developer,
                developedQuiz: "Чародей DataSource. Все вопросики его заслуга",
                photo: "personPhoto"
            ),
            Developer(
                name: "Саша",
                role: .developer,
                developedQuiz: "Волшебник TableView, создал экран со списком тем и эран описания",
                photo: "sashaPhoto"
            ),
            Developer(
                name: "Максим",
                role: .developer,
                developedQuiz: "Маг логики, вся подковерная игра квиза создана им",
                photo: "personPhoto"
            ),
            ]
        
        return team
    }
}

enum Role: String {
    case teamLead = "Teamlead"
    case developer = "Developer"
}
