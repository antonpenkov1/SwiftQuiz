//
//  Data.swift
//  SwiftQuiz
//
//  Created by Варвара Уткина on 22.01.2024.
//

import UIKit

class DataStore {
    static let shared = DataStore()
    
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
    let allQuestion = [
        Question(
            text: "Создание новой переменной/константы это?",
            answers: [
                Answer(answer: "Объявление", type: .correct),
                Answer(answer: "Модификация", type: .wrong),
                Answer(answer: "Гибридизация", type: .wrong),
                Answer(answer: "Полиморфизм", type: .wrong)
            ].shuffled(),
            topic: .letAndVar
        ),
        Question(
            text: "Каким ключевым словом объявляется константа в Swift?",
            answers: [
                Answer(answer: "let", type: .correct),
                Answer(answer: "var", type: .wrong),
                Answer(answer: "const", type: .wrong),
                Answer(answer: "constant", type: .wrong)
            ].shuffled(),
            topic: .letAndVar
        ),
        Question(
            text: "Как объявить переменную в Swift?",
            answers: [
                Answer(answer: "let", type: .wrong),
                Answer(answer: "var", type: .correct),
                Answer(answer: "const", type: .wrong),
                Answer(answer: "variable", type: .wrong)
            ].shuffled(),
            topic: .letAndVar
        ),
        Question(
            text: "Какие значения могут быть присвоены константам в Swift?",
            answers: [
                Answer(answer: "Только однократно изменяемые", type: .correct),
                Answer(answer: "Только многократно изменяемые", type: .wrong),
                Answer(answer: "Любые", type: .wrong),
                Answer(answer: "Только числа и строки", type: .wrong)
            ].shuffled(),
            topic: .letAndVar
        ),
        Question(
            text: "Можно ли изменять значение переменной после инициализации в Swift?",
            answers: [
                Answer(answer: "Да", type: .correct),
                Answer(answer: "Нет", type: .wrong)
            ],
            topic: .letAndVar
        ),
        Question(
            text: "Можно ли изменять значение константы после инициализации в Swift?",
            answers: [
                Answer(answer: "Да", type: .wrong),
                Answer(answer: "Нет", type: .correct)
            ],
            topic: .letAndVar
        ),
        //"Базовые операторы"
        Question(
            text: "Какой оператор используется для деления в Swift?",
            answers: [
                Answer(answer: "/", type: .correct),
                Answer(answer: "*", type: .wrong),
                Answer(answer: "-", type: .wrong),
                Answer(answer: "+", type: .wrong)
            ].shuffled(),
            topic: .basicOperators
        ),
        Question(
            text: "Какой оператор используется для сложения чисел в Swift?",
            answers: [
                Answer(answer: "+", type: .correct),
                Answer(answer: "*", type: .wrong),
                Answer(answer: "-", type: .wrong),
                Answer(answer: "/", type: .wrong)
            ].shuffled(),
            topic: .basicOperators
        ),
        Question(
            text: "Какой оператор используется для вычитания чисел в Swift?",
            answers: [
                Answer(answer: "-", type: .correct),
                Answer(answer: "+", type: .wrong),
                Answer(answer: "*", type: .wrong),
                Answer(answer: "/", type: .wrong)
            ].shuffled(),
            topic: .basicOperators
        ),
        Question(
            text: "Какой оператор используется для умножения чисел в Swift?",
            answers: [
                Answer(answer: "*", type: .correct),
                Answer(answer: "+", type: .wrong),
                Answer(answer: "-", type: .wrong),
                Answer(answer: "/", type: .wrong)
            ].shuffled(),
            topic: .basicOperators
        ),
        Question(
            text: "Какой оператор используется для деления чисел в Swift?",
            answers: [
                Answer(answer: "/", type: .correct),
                Answer(answer: "+", type: .wrong),
                Answer(answer: "*", type: .wrong),
                Answer(answer: "-", type: .wrong)
            ].shuffled(),
            topic: .basicOperators
        ),
        Question(
            text: "Какой оператор используется для нахождения остатка от деления в Swift?",
            answers: [
                Answer(answer: "%", type: .correct),
                Answer(answer: "*", type: .wrong),
                Answer(answer: "-", type: .wrong),
                Answer(answer: "/", type: .wrong)
            ].shuffled(),
            topic: .basicOperators
        ),
        //"Операторы ветвлений"
        Question(
            text: "Какая конструкция используется для выполнения условного ветвления в Swift?",
            answers: [
                Answer(answer: "if", type: .correct),
                Answer(answer: "for", type: .wrong),
                Answer(answer: "while", type: .wrong),
                Answer(answer: "switch", type: .wrong)
            ].shuffled(),
            topic: .branchOperators
        ),
        Question(
            text: "Какой оператор используется для выполнения блока кода при условии, что определенное условие истинно?",
            answers: [
                Answer(answer: "if", type: .correct),
                Answer(answer: "for", type: .wrong),
                Answer(answer: "while", type: .wrong),
                Answer(answer: "switch", type: .wrong)
            ].shuffled(),
            topic: .branchOperators
        ),
        Question(
            text: "Какой оператор используется для выполнения одного блока кода, если условие ложно, и другого блока кода, если условие истинно?",
            answers: [
                Answer(answer: "if", type: .correct),
                Answer(answer: "for", type: .wrong),
                Answer(answer: "while", type: .wrong),
                Answer(answer: "switch", type: .wrong)
            ].shuffled(),
            topic: .branchOperators
        ),
        Question(
            text: "Какой оператор позволяет проверить несколько условий и выполнить определенный блок кода для каждого соответствующего условия?",
            answers: [
                Answer(answer: "switch", type: .correct),
                Answer(answer: "if", type: .wrong),
                Answer(answer: "for", type: .wrong),
                Answer(answer: "while", type: .wrong)
            ].shuffled(),
            topic: .branchOperators
        ),
        Question(
            text: "Какой оператор в Swift позволяет проверить несколько условий и выполнить определенный блок кода для каждого истинного условия по порядку?",
            answers: [
                Answer(answer: "switch", type: .correct),
                Answer(answer: "if", type: .wrong),
                Answer(answer: "for", type: .wrong),
                Answer(answer: "while", type: .wrong)
            ].shuffled(),
            topic: .branchOperators
        ),
        Question(
            text: "Какой оператор используется для выполнения блока кода при условии, что определенное условие ложно?",
            answers: [
                Answer(answer: "switch", type: .correct),
                Answer(answer: "if", type: .wrong),
                Answer(answer: "for", type: .wrong),
                Answer(answer: "while", type: .wrong)
            ].shuffled(),
            topic: .branchOperators
        ),
        //"Типы коллекций"
        Question(
            text: "Какой тип коллекции представляет неупорядоченный набор уникальных значений в Swift?",
            answers: [
                Answer(answer: "Множество", type: .correct),
                Answer(answer: "Массив", type: .wrong),
                Answer(answer: "Словарь", type: .wrong),
                Answer(answer: "Строка", type: .wrong)
            ].shuffled(),
            topic: .collectionTypes
        ),
        Question(
            text: "Как объявить массив в Swift?",
            answers: [
                Answer(answer: "[]", type: .correct),
                Answer(answer: "let", type: .wrong),
                Answer(answer: "array", type: .wrong),
                Answer(answer: "var", type: .wrong)
            ].shuffled(),
            topic: .collectionTypes
        ),
        Question(
            text: "Как объявить словарь в Swift?",
            answers: [
                Answer(answer: "[:]", type: .correct),
                Answer(answer: "let", type: .wrong),
                Answer(answer: "dictionary", type: .wrong),
                Answer(answer: "var", type: .wrong)
            ].shuffled(),
            topic: .collectionTypes
        ),
        Question(
            text: "Как объявить множество в Swift?",
            answers: [
                Answer(answer: "set", type: .correct),
                Answer(answer: "let", type: .wrong),
                Answer(answer: "var", type: .wrong),
                Answer(answer: "{}", type: .wrong)
            ].shuffled(),
            topic: .collectionTypes
        ),
        Question(
            text: "Какой тип коллекции используется для хранения упорядоченных и повторяющихся элементов?",
            answers: [
                Answer(answer: "Массив", type: .correct),
                Answer(answer: "Словарь", type: .wrong),
                Answer(answer: "Множество", type: .wrong),
                Answer(answer: "Строка", type: .wrong)
            ].shuffled(),
            topic: .collectionTypes
        ),
        Question(
            text: "Какой тип коллекции используется для хранения пар ключ-значение?",
            answers: [
                Answer(answer: "Словарь", type: .correct),
                Answer(answer: "Массив", type: .wrong),
                Answer(answer: "Множество", type: .wrong),
                Answer(answer: "Строка", type: .wrong)
            ].shuffled(),
            topic: .collectionTypes
        ),
        //"Функции"
        Question(
            text: "Как объявить функцию в Swift?",
            answers: [
                Answer(answer: "func", type: .correct),
                Answer(answer: "method", type: .wrong),
                Answer(answer: "class", type: .wrong),
                Answer(answer: "function", type: .wrong)
            ].shuffled(),
            topic: .functions
        ),
        Question(
            text: "Каким образом можно передать параметры в функцию в Swift?",
            answers: [
                Answer(answer: "По значению и по ссылке", type: .correct),
                Answer(answer: "По значению", type: .wrong),
                Answer(answer: "По ссылке", type: .wrong),
                Answer(answer: "Только по ссылке", type: .wrong)
            ].shuffled(),
            topic: .functions
        ),
        Question(
            text: "Может ли функция в Swift возвращать несколько значений?",
            answers: [
                Answer(answer: "Да, с помощью кортежей", type: .correct),
                Answer(answer: "Нет, только одно значение", type: .wrong),
                Answer(answer: "Да, с помощью массивов", type: .wrong),
                Answer(answer: "Нет, функция может вернуть только одно значение, но это может быть кортеж", type: .wrong)
            ].shuffled(),
            topic: .functions
        ),
        Question(
            text: "Можно ли в Swift передавать функцию в качестве параметра другой функции?",
            answers: [
                Answer(answer: "Да", type: .correct),
                Answer(answer: "Нет", type: .wrong)
            ],
            topic: .functions
        ),
        Question(
            text: "Что такое рекурсия?",
            answers: [
                Answer(answer: "Процесс вызова функции из самой себя", type: .correct),
                Answer(answer: "Процесс вызова нескольких функций в цикле", type: .wrong),
                Answer(answer: "Имя функции совпадает с именем класса", type: .wrong),
                Answer(answer: "Техника оптимизации функций", type: .wrong)
            ].shuffled(),
            topic: .functions
        ),
        //"Функции высшего порядка"
        Question(
            text: "Какая функция используется для преобразования элементов массива в новый массив?",
            answers: [
                Answer(answer: "map", type: .correct),
                Answer(answer: "reduce", type: .wrong),
                Answer(answer: "compactMap", type: .wrong),
                Answer(answer: "sorted", type: .wrong)
            ].shuffled(),
            topic: .superFunc
        ),
        Question(
            text: "Какая функция используется для фильтрации элементов массива?",
            answers: [
                Answer(answer: "filter", type: .correct),
                Answer(answer: "map", type: .wrong),
                Answer(answer: "compactMap", type: .wrong),
                Answer(answer: "sorted", type: .wrong)
            ].shuffled(),
            topic: .superFunc
        ),
        Question(
            text: "Какая функция используется для преобразования элементов массива и удаления всех nil значений?",
            answers: [
                Answer(answer: "compactMap", type: .correct),
                Answer(answer: "map", type: .wrong),
                Answer(answer: "flatMap", type: .wrong),
                Answer(answer: "sorted", type: .wrong)
            ].shuffled(),
            topic: .superFunc
        ),
        Question(
            text: "Что делает функция shuffled()?",
            answers: [
                Answer(answer: "Изменяет порядок массивов случайным образом", type: .correct),
                Answer(answer: "Меняет значение параметра с true на false, и наоборот", type: .wrong),
                Answer(answer: "Добавляет элемент в массив", type: .wrong),
                Answer(answer: "Удаляет рандомный элемент из массива", type: .wrong)
            ].shuffled(),
            topic: .superFunc
        ),
        Question(
            text: "Какая функция используется для преобразования массива массивов в один массив?",
            answers: [
                Answer(answer: "flatMap", type: .correct),
                Answer(answer: "compactMap", type: .wrong),
                Answer(answer: "reduce", type: .wrong),
                Answer(answer: "map", type: .wrong)
            ].shuffled(),
            topic: .superFunc
        ),
        Question(
            text: "Как работает функция sorted в Swift?",
            answers: [
                Answer(answer: "Она сортирует элементы массива в порядке возрастания", type: .correct),
                Answer(answer: "Она сортирует элементы массива в порядке убывания", type: .wrong),
                Answer(answer: "Она перемешивает элементы массива в случайном порядке", type: .wrong),
                Answer(answer: "Она удаляет дубликаты из массива", type: .wrong)
            ].shuffled(),
            topic: .superFunc
        ),
        //Классы и объекты
        Question(
            text: "В классе нужно инкапсулировать:",
            answers: [
                Answer(answer: "Методы и свойства для реализации внутренней логики класса", type: .correct),
                Answer(answer: "Все методы и свойства", type: .wrong),
            ].shuffled(),
            topic: .classesAndObjects
        ),
        Question(
            text: "Сокрытие информации можно также назвать как",
            answers: [
                Answer(answer: "Инкапсуляция", type: .correct),
                Answer(answer: "Полиморфизм", type: .wrong),
                Answer(answer: "Наследование", type: .wrong),
                Answer(answer: "Деинициализация", type: .wrong)
            ].shuffled(),
            topic: .classesAndObjects
        ),
        Question(
            text: "Что такое экземпляр класса?",
            answers: [
                Answer(answer: "Объект, находящийся в памяти устройства", type: .wrong),
                Answer(answer: "Шаблон на основе которого создаются объекты класса", type: .wrong),
                Answer(answer: "Ссылка на область в памяти устройства, где хранится объект класса", type: .correct)
            ].shuffled(),
            topic: .classesAndObjects
        ),
        Question(
            text: "Как инкапсулировать методы и свойства класса?",
            answers: [
                Answer(answer: "Пометить их ключевым словом fileprivate", type: .wrong),
                Answer(answer: "Поместить их в отдельное расширение для класса", type: .wrong),
                Answer(answer: "Пометить их ключевым словом private", type: .correct)
            ].shuffled(),
            topic: .classesAndObjects
        ),
        Question(
            text: "Могут ли разные экземпляры класса ссылаться на один и тот же объект?",
            answers: [
                Answer(answer: "Нет", type: .wrong),
                Answer(answer: "Да", type: .correct)
            ].shuffled(),
            topic: .classesAndObjects
        ),
        //Структуры
        Question(
            text: "Чем является экземпляр структуры?",
            answers: [
                Answer(answer: "Ссылкой на объект", type: .wrong),
                Answer(answer: "Объектом", type: .correct)
            ].shuffled(),
            topic: .structures
        ),
        Question(
            text: "Может ли класс наследоваться сразу от нескольких классов?",
            answers: [
                Answer(answer: "Нет", type: .wrong),
                Answer(answer: "Да", type: .correct)
            ].shuffled(),
            topic: .structures
        ),
        Question(
            text: "Когда в подклассе объявляется метод с таким же названием, параметрами и возвращаемым значением как и в одном из его родительских классов, это:",
            answers: [
                Answer(answer: "Затенение метода", type: .wrong),
                Answer(answer: "Переопределение метода (Method overriding)", type: .correct),
                Answer(answer: "Так делать нельзя, возникнет ошибка", type: .wrong)
            ].shuffled(),
            topic: .structures
        ),
        Question(
            text: "Верно ли утверждение: класс-наследник должен быть более абстрактным, чем класс-родитель?",
            answers: [
                Answer(answer: "Да", type: .wrong),
                Answer(answer: "Нет, наследник должен конкретизировать суперкласс", type: .correct)
            ].shuffled(),
            topic: .structures
        ),
        Question(
            text: "Как называется создание нового класса на базе существующего(базового) класса?",
            answers: [
                Answer(answer: "Полиморфизм", type: .wrong),
                Answer(answer: "Наследование", type: .correct),
                Answer(answer: "Инкапсуляция", type: .wrong),
                Answer(answer: "Переопределение", type: .wrong)
            ].shuffled(),
            topic: .structures
        ),
        // Перечисления
        Question(
            text: "Что относится к ссылочным типам?",
            answers: [
                Answer(answer: "Структуры", type: .wrong),
                Answer(answer: "Классы", type: .correct),
                Answer(answer: "Перечисления", type: .wrong)
            ].shuffled(),
            topic: .transfers
        ),
        Question(
            text: "В каком стиле следует задавать названия для перечислений?",
            answers: [
                Answer(answer: "UpperCamelCase", type: .correct),
                Answer(answer: "lowerCamelCase", type: .wrong),
                Answer(answer: "На свое усмотрение", type: .wrong)
            ].shuffled(),
            topic: .transfers
        ),
        Question(
            text: "Все базовые типы в Swift являются:",
            answers: [
                Answer(answer: "Классами", type: .wrong),
                Answer(answer: "Структурами", type: .correct),
                Answer(answer: "Перечислениями", type: .wrong)
            ].shuffled(),
            topic: .transfers
        ),
        Question(
            text: "Каким ключевым словом обозначается перечисление?",
            answers: [
                Answer(answer: "class", type: .wrong),
                Answer(answer: "enum", type: .correct),
                Answer(answer: "Enum", type: .wrong),
                Answer(answer: "enumeration", type: .wrong),
            ].shuffled(),
            topic: .transfers
        ),
        Question(
            text: "Обязаны ли мы присваивать исходные значения кейсам?",
            answers: [
                Answer(answer: "Да", type: .wrong),
                Answer(answer: "Нет", type: .correct)
            ].shuffled(),
            topic: .transfers
        ),
        // Дополнительные концепции Swift
        Question(
            text: "Можно ли объединять в кортежи свойства разных типов?",
            answers: [
                Answer(answer: "Нет", type: .wrong),
                Answer(answer: "Да", type: .correct)
            ].shuffled(),
            topic: .additionalConcepts
        ),
        Question(
            text: "Можно ли использовать опциональные константы и переменные, не проинициализировав их?",
            answers: [
                Answer(answer: "Можно, но только переменные", type: .correct),
                Answer(answer: "Можно, но только константы", type: .wrong),
                Answer(answer: "Можно", type: .wrong),
                Answer(answer: "Нельзя", type: .wrong)
            ].shuffled(),
            topic: .additionalConcepts
        ),
        Question(
            text: "К чему приводит принудительное извлечение, когда опционал имеет nil?",
            answers: [
                Answer(answer: "К падению приложения", type: .correct),
                Answer(answer: "Получим nil", type: .wrong),
                Answer(answer: "К извлечению значения", type: .wrong)
            ].shuffled(),
            topic: .additionalConcepts
        ),
        Question(
            text: "Какое значение имеет свойство: var optionalString",
            answers: [
                Answer(answer: "Свойство не имеет значения", type: .correct),
                Answer(answer: "Пустую строку", type: .wrong),
                Answer(answer: "nil", type: .wrong)
            ].shuffled(),
            topic: .additionalConcepts
        ),
        Question(
            text: "Какое значение имеет свойство: var optionalString?",
            answers: [
                Answer(answer: "nil", type: .correct),
                Answer(answer: "Пустую строку", type: .wrong),
                Answer(answer: "Свойство не имеет значения", type: .wrong)
            ].shuffled(),
            topic: .additionalConcepts
        )
    ].shuffled()
    let allTopics = [
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
            content:
                """
                Операторы ветвлений
                - if-else
                - Тернарный оператор
                - switch statement
                """
        ),
        Topic(
            name: .collectionTypes,
            content:
                """
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
            content:
                """
                Функции
                - Определение функции
                - Объявление функции
                - Функции возвращающие значения
                - Функции с параметрами
                """
        ),
        Topic(
            name: .superFunc,
            content:
                """
                Функции высшего порядка:
                - sorted
                - map
                - flatMap
                и другие
                """
        ),
        Topic(
            name: .classesAndObjects,
            content:
                """
                Классы и объекты:
                - Общее понятие ООП
                - Описание класса
                - Публичные свойства и методы
                - Инициализаторы
                """
        ),
        Topic(
            name: .structures,
            content:
                """
                Структуры:
                - Наследование
                - Полиморфизм
                - Сравнение классов и структур
                - Методы структур
                """
        ),
        Topic(
            name: .transfers,
            content:
                """
                Перечисления:
                - Синтаксис перечислений
                - Возможность перечислений
                - Исходные значения кейсов перечислений
                - Инициализация
                """
        ),
        Topic(
            name: .additionalConcepts,
            content:
                """
                Дополнительные концепции Swift:
                - Кортежи
                - Извлечение опциональных типов
                - Опциональная привязка
                - Оператор Guard
                """
        )
    ]
    
    private init() {}
}
