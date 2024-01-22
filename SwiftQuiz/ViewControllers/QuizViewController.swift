//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by horze on 15.01.2024.
//

import UIKit

final class QuizViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var topicLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var questionProgressView: UIProgressView!
    @IBOutlet var answerButtons: [UIButton]!
    
    // MARK: - Public Properties
    var selectedTopic: TopicName!
    
    // MARK: - Private Properties
    private var questionIndex = 0
    private var questions: [Question] = []
    private var wrongAnswers: [Answer] = []
    private var questionsWithMistakes: [Question] = []
    
    private var currentQuestion: Question {
        questions[questionIndex]
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        topicLabel.text = "Тема: \(selectedTopic.rawValue)"
        questions = DataSource.shared.allQuestion.filter { $0.topic ==  selectedTopic }
        updateUI()
    }
    
    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultsVC = segue.destination as? ResultsViewController else { return }
        resultsVC.totalQuestionsCount = questions.count
        resultsVC.wrongAnswers = wrongAnswers
        resultsVC.questionsWithMistakes = questionsWithMistakes
    }
    
    // MARK: - Actions
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        guard let selectedIndex = answerButtons.firstIndex(of: sender) else { return }
        let currentAnswer = currentQuestion.answers[selectedIndex]
        if currentAnswer.type == .wrong {
            questionsWithMistakes.append(currentQuestion)
            wrongAnswers.append(currentAnswer)
        }
        
        questionIndex += 1
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "showResults", sender: nil)
        }
    }
    
    // MARK: - Private Methods
    private func updateUI() {
        title = "Вопрос № \(questionIndex + 1) из \(questions.count)"
        topicLabel.text = "Тема: \(currentQuestion.topic.rawValue)"
        questionLabel.text = currentQuestion.text
        let totalProgress = Float(questionIndex) / Float(questions.count)
        questionProgressView.setProgress(totalProgress, animated: true)
        
        for (buttonIndex, button) in answerButtons.enumerated() {
            if buttonIndex < currentQuestion.answers.count {
                button.setTitle(currentQuestion.answers[buttonIndex].answer, for: .normal)
                button.titleLabel?.textAlignment = .center
                button.isHidden = false
            } else {
                button.isHidden = true
            }
        }
    }
}
