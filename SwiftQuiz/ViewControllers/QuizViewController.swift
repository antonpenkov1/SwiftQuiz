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
    // MARK: - Private Properties
    private var questionIndex = 0
    private var currentQuestion: Question {
        questions[questionIndex]
    }
    private let questions = Question.getQuestions()
    private var selectedAnswers: [Int] = []
    private var wrongAnswers: [Question] = []
    private var correctAnswersCount = 0
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultsViewController = segue.destination as! ResultsViewController
        resultsViewController.correctAnswersCount = correctAnswersCount
        resultsViewController.totalQuestionsCount = questions.count
        resultsViewController.wrongAnswers = wrongAnswers
    }
    // MARK: - UI Updates
    private func updateUI() {
        title = "Вопрос № \(questionIndex + 1) из \(questions.count)"
        topicLabel.text = currentQuestion.topic.rawValue
        questionLabel.text = currentQuestion.text
        let totalProgress = Float(questionIndex) / Float(questions.count)
        questionProgressView.setProgress(totalProgress, animated: true)
        
        for (buttonIndex, button) in answerButtons.enumerated() {
            if buttonIndex < currentQuestion.options.count {
                button.setTitle(currentQuestion.options[buttonIndex], for: .normal)
                button.isHidden = false
            } else {
                button.isHidden = true
            }
        }
    }
    // MARK: - Actions
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        guard let selectedIndex = answerButtons.firstIndex(of: sender) else { return }
        
        selectedAnswers.append(selectedIndex)
        if selectedIndex == currentQuestion.correctAnswerIndex {
            correctAnswersCount += 1
        } else {
            wrongAnswers.append(currentQuestion)
        }
        
        questionIndex += 1
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "showResults", sender: nil)
        }
    }
}


