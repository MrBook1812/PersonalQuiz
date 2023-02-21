//
//  Question.swift
//  PersonalQuiz
//
//  Created by Kirill Kniga on 18.02.2023.
//

struct Question {
    let title: String
    let responseType: ResponseType
    let aswers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                responseType: .single,
                aswers: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыба", animal: .cat),
                    Answer(title: "Морковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                responseType: .multiple,
                aswers: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Обниматься", animal: .rabbit),
                    Answer(title: "Есть", animal: .turtle)
                ]
            ),
            Question(
                title: "Любите ли вы поездки на машине?",
                responseType: .ranged,
                aswers: [
                    Answer(title: "Ненавижу", animal: .dog),
                    Answer(title: "Нервничаю", animal: .cat),
                    Answer(title: "Люблю", animal: .rabbit),
                    Answer(title: "Обожаю", animal: .turtle)
                ]
            )
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
            
        case .dog:
            return "for dog"
        case .cat:
            return "for cat"
        case .rabbit:
            return "for rabbit"
        case .turtle:
            return "for turtle"
        }
    }
}

