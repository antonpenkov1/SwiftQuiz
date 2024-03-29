//
//  Topic.swift
//  SwiftQuiz
//
//  Created by Александр Зинин on 16.01.2024.
//

struct Topic {
    let name: TopicName
    let content: String
    
    static func getTopics() -> [Topic] {
        [
            Topic(
                name: .letAndVar,
                content: """
                - Константы и переменные
                - Базовые типы данных
                """
            ),
            Topic(
                name: .basicOperators,
                content: """
                Базовые операторы:
                - Арифметические операторы
                - Операторы присваивания
                - Операторы сравнения
                - Операторы диапазона
                - Логические операторы
                """
            ),
            Topic(
                name: .branchOperators,
                content: """
                Операторы ветвлений
                - if-else
                - Тернарный оператор
                - switch statement
                """
            ),
            Topic(
                name: .collectionTypes,
                content: """
                Типы коллекций
                - Массивы
                - Множества
                - Словари
                - Строки
                 
                Циклы for-in, while, repeat-while
                """
            ),
            Topic(
                name: .functions,
                content: """
                Функции
                - Определение функции
                - Объявление функции
                - Функции возвращающие значения
                - Функции с параметрами
                """
            )
        ]
    }
}
