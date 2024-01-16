//
//  TopicsTableViewController.swift
//  SwiftQuiz
//
//  Created by Антон Пеньков on 15.01.2024.
//

import UIKit

final class TopicsTableViewController: UITableViewController {
    
    var wrongAnswers: [Question] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wrongAnswers.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let question = wrongAnswers[indexPath.row]
        content.text = question.text
        content.secondaryText = "Правильный ответ: \(question.options[question.correctAnswerIndex])"
        cell.contentConfiguration = content
        
        return cell
    }
    
}
