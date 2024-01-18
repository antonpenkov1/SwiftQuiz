//
//  TopicsTableViewController.swift
//  SwiftQuiz
//
//  Created by Антон Пеньков on 15.01.2024.
//

import UIKit

final class AnswersViewController: UITableViewController {
    
    var userWrongAnswers: [UserAnswer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userWrongAnswers.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let userAnswer = userWrongAnswers[indexPath.row]
        let question = userAnswer.question
        let userAnswerText = question.options[userAnswer.answerIndex]
        content.text = question.text
        content.secondaryText = """
        Правильный ответ: \(question.options[question.correctAnswerIndex])
        Ваш ответ: \(userAnswerText)
        """
        content.textProperties.color = UIColor(white: 1, alpha: 0.9)
        content.secondaryTextProperties.color = UIColor(white: 1, alpha: 0.8)
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func closeButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}
