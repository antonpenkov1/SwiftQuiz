//
//  Question.swift
//  SwiftQuiz
//
//  Created by horze on 12.01.2024.
//

struct Question {
    let text: String
    let options: [String]
    let correctAnswerIndex: Int
    let topic: TopicName
    
    static func getQuestions(forTopic topic: TopicName) -> [Question] {
        let allQuestion = [
            Question(
                text: "Как объявить константу в Swift?",
                options: ["let", "var", "const", "constant"],
                correctAnswerIndex: 0,
                topic: .letAndVar
            ),
            Question(
                text: "Как объявить переменную в Swift?",
                options: ["let", "var", "const", "variable"],
                correctAnswerIndex: 1,
                topic: .letAndVar
            ),
            Question(
                text: "Какие значения могут быть присвоены константам в Swift?",
                options: ["Только однократно изменяемые", "Только многократно изменяемые", "Любые", "Только числа и строки"],
                correctAnswerIndex: 0,
                topic: .letAndVar
            ),
            Question(
                text: "Можно ли изменять значение константы после инициализации в Swift?",
                options: ["Да", "Нет"],
                correctAnswerIndex: 1,
                topic: .letAndVar
            ),
            Question(
                text: "Можно ли изменять значение переменной после инициализации в Swift?",
                options: ["Да", "Нет"],
                correctAnswerIndex: 0,
                topic: .letAndVar
            ),
            //"Базовые операторы"
            Question(
                text: "Какой оператор используется для деления в Swift?",
                options: ["/", "*", "-", "+"],
                correctAnswerIndex: 0,
                topic: .basicOperators
            ),
            Question(
                text: "Какой оператор используется для сложения чисел в Swift?",
                options: ["+", "*", "-", "/"],
                correctAnswerIndex: 0,
                topic: .basicOperators
            ),
            Question(
                text: "Какой оператор используется для вычитания чисел в Swift?",
                options: ["+", "*", "-", "/"],
                correctAnswerIndex: 2,
                topic: .basicOperators
            ),
            Question(
                text: "Какой оператор используется для умножения чисел в Swift?",
                options: ["+", "*", "-", "/"],
                correctAnswerIndex: 1,
                topic: .basicOperators
            ),
            Question(
                text: "Какой оператор используется для деления чисел в Swift?",
                options: ["+", "*", "-", "/"],
                correctAnswerIndex: 3,
                topic: .basicOperators
            ),
            Question(
                text: "Какой оператор используется для нахождения остатка от деления в Swift?",
                options: ["%", "*", "-", "/"],
                correctAnswerIndex: 0,
                topic: .basicOperators
            ),
            //"Операторы ветвлений"
            Question(
                text: "Какая конструкция используется для выполнения условного ветвления в Swift?",
                options: ["if", "for", "while", "switch"],
                correctAnswerIndex: 0,
                topic: .branchOperators
            ),
            Question(
                text: "Какой оператор используется для выполнения блока кода при условии, что определенное условие истинно?",
                options: ["if", "for", "while", "switch"],
                correctAnswerIndex: 0,
                topic: .branchOperators
            ),
            Question(
                text: "Какой оператор используется для выполнения одного блока кода, если условие ложно, и другого блока кода, если условие истинно?",
                options: ["if", "for", "while", "switch"],
                correctAnswerIndex: 0,
                topic: .branchOperators
            ),
            Question(
                text: "Какой оператор позволяет проверить несколько условий и выполнить определенный блок кода для каждого соответствующего условия?",
                options: ["if", "for", "while", "switch"],
                correctAnswerIndex: 3,
                topic: .branchOperators
            ),
            Question(
                text: "Какой оператор в Swift позволяет проверить несколько условий и выполнить определенный блок кода для каждого истинного условия по порядку?",
                options: ["if", "for", "while", "switch"],
                correctAnswerIndex: 3,
                topic: .branchOperators
            ),
            Question(
                text: "Какой оператор используется для выполнения блока кода при условии, что определенное условие ложно?",
                options: ["if", "for", "while", "switch"],
                correctAnswerIndex: 3,
                topic: .branchOperators
            ),
            //"Типы коллекций"
            Question(
                text: "Какой тип коллекции представляет неупорядоченный набор уникальных значений в Swift?",
                options: ["Массив", "Словарь", "Множество", "Строка"],
                correctAnswerIndex: 2,
                topic: .collectionTypes
            ),
            Question(
                text: "Как объявить массив в Swift?",
                options: ["let", "array", "var", "[]"],
                correctAnswerIndex: 3,
                topic: .collectionTypes
            ),
            Question(
                text: "Как объявить словарь в Swift?",
                options: ["let", "dictionary", "var", "[:]"],
                correctAnswerIndex: 3,
                topic: .collectionTypes
            ),
            Question(
                text: "Как объявить множество в Swift?",
                options: ["let", "set", "var", "{}"],
                correctAnswerIndex: 1,
                topic: .collectionTypes
            ),
            Question(
                text: "Какой тип коллекции используется для хранения упорядоченных и повторяющихся элементов?",
                options: ["Массив", "Словарь", "Множество", "Строка"],
                correctAnswerIndex: 0,
                topic: .collectionTypes
            ),
            Question(
                text: "Какой тип коллекции используется для хранения пар ключ-значение?",
                options: ["Массив", "Словарь", "Множество", "Строка"],
                correctAnswerIndex: 1,
                topic: .collectionTypes
            ),
            //"Функции"
            Question(
                text: "Как объявить функцию в Swift?",
                options: ["method", "class", "function", "func"],
                correctAnswerIndex: 3,
                topic: .functions
            ),
            Question(
                text: "Как объявить функцию в Swift?",
                options: ["func", "function", "fn", "def"],
                correctAnswerIndex: 0,
                topic: .functions
            ),
            Question(
                text: "Каким образом можно передать параметры в функцию в Swift?",
                options: ["По значению", "По ссылке", "По значению и по ссылке", "Только по ссылке"],
                correctAnswerIndex: 2,
                topic: .functions
            ),
            Question(
                text: "Может ли функция в Swift возвращать несколько значений?",
                options: ["Да, с помощью кортежей", "Нет, только одно значение", "Да, с помощью массивов", "Нет, функция может вернуть только одно значение, но это может быть кортеж"],
                correctAnswerIndex: 0,
                topic: .functions
            ),
            Question(
                text: "Можно ли в Swift передавать функцию в качестве параметра другой функции?",
                options: ["Да", "Нет"],
                correctAnswerIndex: 0,
                topic: .functions
            ),
            Question(
                text: "Что такое рекурсия?",
                options: ["Процесс вызова функции из самой себя", "Процесс вызова нескольких функций в цикле", "Имя функции совпадает с именем класса", "Техника оптимизации функций"],
                correctAnswerIndex: 0,
                topic: .functions
            )
        ]
        return allQuestion.filter { $0.topic == topic}
    }
}

struct Topic {
    let name: TopicName
    let content: String
    
    static func getTopics() -> [Topic] {
        [
            Topic(
                name: .letAndVar,
                content: """
                Приветствие
                - Краткое описание курса.
                - Регламент проведения уроков
                 
                Введение
                - Краткая история Swift
                - Преимущество языка

                Синтаксис языка и основные концепции:
                - Знакомство с Playground
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
                 
                Циклы
                - for-in
                - while
                - repeat-while
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

struct CourseContent {
    let topics: [Topic]
    let questions: [Question]
    
    init() {
        self.topics = Topic.getTopics()
        self.questions = topics.flatMap { Question.getQuestions(forTopic: $0.name) }
    }
}


struct UserAnswer {
    let question: Question
    let answerIndex: Int
}

enum TopicName: String {
    case letAndVar = "Константы и переменные"
    case basicOperators = "Базовые операторы"
    case branchOperators = "Операторы ветвлений"
    case collectionTypes = "Типы коллекций"
    case functions = "Функции"
}
