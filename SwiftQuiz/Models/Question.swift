//
//  Question.swift
//  SwiftQuiz
//
//  Created by horze on 12.01.2024.
//

struct Question {
    let text: String
    let answers: [Answer]
    let topic: TopicName
}

struct Topic {
    let name: TopicName
    let content: String
}

struct Answer {
    let answer: String
    var type: ResponseType
}

enum TopicName: String {
    case letAndVar = "Константы и переменные"
    case basicOperators = "Базовые операторы"
    case branchOperators = "Операторы ветвлений"
    case collectionTypes = "Типы коллекций"
    case functions = "Функции"
    case superFunc = "Функции высшего порядка"
    case classesAndObjects = "Классы и объекты"
    case structures = "Структуры"
    case transfers = "Перечисления"
    case additionalConcepts = "Дополнительные концепции"
}

enum ResponseType {
    case correct
    case wrong
}
