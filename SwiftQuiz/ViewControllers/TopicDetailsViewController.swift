//
//  TopicDetailViewController.swift
//  SwiftQuiz
//
//  Created by Александр Зинин on 17.01.2024.
//

import UIKit

final class TopicDetailsViewController: UIViewController {

    @IBOutlet var topicNumberLabel: UILabel!
    @IBOutlet var topicLabel: UILabel!
    @IBOutlet weak var contentTextLabel: UILabel!
    @IBOutlet var startButton: UIButton!
    
    var topic: Topic!
    var topicNumber: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentTextLabel.text = topic.content
        topicLabel.text = topic.name.rawValue
        topicNumberLabel.text = topicNumber.formatted()
    }
    
    @IBAction func topicButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showQuiz", sender: self)
    }
    
    @IBAction func backButtonAction() {
        dismiss(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showQuiz" {
            if let navigationController = segue.destination as? UINavigationController,
               let destinationVC = navigationController.viewControllers.first as? QuizViewController {
                destinationVC.selectedTopic = topic.name
            }
        }
    }

}
