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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
