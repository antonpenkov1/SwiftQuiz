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
    
    var topic: Topic!
    var topicNumber: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentTextLabel.text = topic.content
        topicLabel.text = topic.name.rawValue
        topicNumberLabel.text = topicNumber.formatted()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationController = segue.destination as? UINavigationController else { return }
        let destinationVC = navigationController.topViewController as? QuizViewController
        destinationVC?.selectedTopic = topic.name
    }
    
    @IBAction func backButtonAction() {
        dismiss(animated: true)
    }
}
