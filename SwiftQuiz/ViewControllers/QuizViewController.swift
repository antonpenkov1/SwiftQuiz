//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by horze on 15.01.2024.
//

import UIKit

final class QuizViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var questionProgressView: UIProgressView!
    
    @IBOutlet var answerButtons: [UIButton]!
    
    // MARK: - Private Properties
    private var questionIndex = 0
    private let questions = Question.getQuestions()
    private var selectedAnswers: [Int] = []
    private var correctAnswersCount = 0
    
    private var totalProgress: Float {
        Float(questionIndex) / Float(questions.count)
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults" {
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.correctAnswersCount = correctAnswersCount
            resultsViewController.totalQuestionsCount = questions.count
        }
    }
    
    // MARK: - UI Updates
    private func updateUI() {
        let currentQuestion = questions[questionIndex]
        title = "Вопрос № \(questionIndex + 1) из \(questions.count)"
        self.questionLabel.text = currentQuestion.text
        self.questionProgressView.setProgress(totalProgress, animated: true)
        
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
        let currentQuestion = questions[questionIndex]
        if let selectedIndex = answerButtons.firstIndex(of: sender) {
            selectedAnswers.append(selectedIndex)
            if selectedIndex == currentQuestion.correctAnswerIndex {
                correctAnswersCount += 1
            }
        }
        
        questionIndex += 1
        if questionIndex < questions.count {
            updateUI()
        } else {
            finishQuiz()
        }
    }
    
    private func finishQuiz() {
        performSegue(withIdentifier: "showResults", sender: nil)
    }
}


