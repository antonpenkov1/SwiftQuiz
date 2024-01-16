//
//  ResultsViewController.swift
//  SwiftQuiz
//
//  Created by horze on 15.01.2024.
//

import UIKit

final class ResultsViewController: UIViewController {
    
    @IBOutlet var shortResultLabel: UILabel!
    @IBOutlet var backButton: UIButton!
    
    var correctAnswersCount = 0
    var totalQuestionsCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shortResultLabel.text = "Вы ответили на \(correctAnswersCount) из \(totalQuestionsCount) вопросов"
        navigationItem.hidesBackButton = true
    }
}
