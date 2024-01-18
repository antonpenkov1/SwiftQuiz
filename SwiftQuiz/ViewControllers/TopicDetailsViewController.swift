//
//  TopicDetailViewController.swift
//  SwiftQuiz
//
//  Created by Александр Зинин on 17.01.2024.
//

import UIKit

final class TopicDetailsViewController: UIViewController {

    @IBOutlet weak var contentTextView: UILabel!
    @IBOutlet var startButton: UIButton!
    
    var topic: Topic!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentTextView.text = topic.content
    }
    
    @IBAction func topicButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showQuiz", sender: self)
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
