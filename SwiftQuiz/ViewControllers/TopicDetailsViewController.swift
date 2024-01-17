//
//  TopicDetailViewController.swift
//  SwiftQuiz
//
//  Created by Александр Зинин on 17.01.2024.
//

import UIKit

final class TopicDetailsViewController: UIViewController {

    @IBOutlet weak var contentTextView: UILabel!
    
    var topic: Topic!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentTextView.text = topic.content
    }

}
