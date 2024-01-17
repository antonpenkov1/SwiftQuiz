//
//  TopicDetailViewController.swift
//  SwiftQuiz
//
//  Created by Александр Зинин on 17.01.2024.
//

import UIKit

final class TopicDetailsViewController: UIViewController {

    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var startButton: UIButton!

    var topic: Topic!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentTextView.text = topic.content
    }

}
