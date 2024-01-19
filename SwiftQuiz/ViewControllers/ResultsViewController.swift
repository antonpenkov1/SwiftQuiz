//
//  ResultsViewController.swift
//  SwiftQuiz
//
//  Created by horze on 15.01.2024.
//

import UIKit

final class ResultsViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var shortResultLabel: UILabel!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var errorButton: UIButton!
    @IBOutlet var resultImage: UIImageView!
    
    var correctAnswersCount = 0
    var totalQuestionsCount = 0
    var userWrongAnswers: [UserAnswer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shortResultLabel.text = """
        Вы ответили правильно
        на \(correctAnswersCount) из \(totalQuestionsCount) вопросов
        """
        navigationItem.hidesBackButton = true
        updateResultImage()
        errorButton.isHidden = userWrongAnswers.isEmpty
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "wrongAnswersSegue" {
            if let navigationController = segue.destination as? UINavigationController,
               let destinationVC = navigationController.viewControllers.first as? AnswersViewController {
                destinationVC.userWrongAnswers = self.userWrongAnswers
            }
        }
    }
    
    private func updateResultImage() {
        let successThreshold = 0.8
        let successRate = Double(correctAnswersCount) / Double(totalQuestionsCount)
        
        if successRate >= successThreshold {
            resultImage.image = UIImage(named: "succeed")
            resultLabel.text = "Тема изучена! 💪"
        } else {
            resultImage.image = UIImage(named: "failed")
            resultLabel.text = "Необходимо повторение"
        }
    }
}


