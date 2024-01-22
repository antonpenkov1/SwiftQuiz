//
//  ResultsViewController.swift
//  SwiftQuiz
//
//  Created by horze on 15.01.2024.
//

import UIKit

final class ResultsViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var shortResultLabel: UILabel!
    @IBOutlet var errorButton: UIButton!
    @IBOutlet var resultImage: UIImageView!
    
    // MARK: - Public Properties
    var wrongAnswers: [Answer]!
    var questionsWithMistakes: [Question]!
    var totalQuestionsCount: Int!
    
    // MARK: - Private Properties
    private var correctAnswerscount: Int {
        totalQuestionsCount - wrongAnswers.count
    }
    
    // MARK: - Lifecycle and Navigation
    override func viewDidLoad() {
        super.viewDidLoad()
        shortResultLabel.text =
            """
            Вы ответили правильно
            на \(correctAnswerscount) из \(totalQuestionsCount ?? 0) вопросов
            """
        navigationItem.hidesBackButton = true
        updateResultImage()
        errorButton.isHidden = (totalQuestionsCount == correctAnswerscount) ? true : false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationController = segue.destination as? UINavigationController else {return }
        let answersVC = navigationController.topViewController as? AnswersViewController
        answersVC?.wrongAnswers = wrongAnswers
        answersVC?.questionsWithMistakes =  questionsWithMistakes
    }
    
    // MARK: - Private Methods
    private func updateResultImage() {
        let successThreshold = 0.8
        let successRate = Double(correctAnswerscount) / Double(totalQuestionsCount)
        
        if successRate >= successThreshold {
            resultImage.image = UIImage(named: "succeed")
            resultLabel.text = "Тема изучена! 💪"
        } else {
            resultImage.image = UIImage(named: "failed")
            resultLabel.text = "Необходимо повторение"
        }
    }
}
