//
//  TopicsTableViewController.swift
//  SwiftQuiz
//
//  Created by Антон Пеньков on 15.01.2024.
//

import UIKit

final class AnswersViewController: UITableViewController {
    
    var wrongAnswers: [Answer]!
    var questionsWithMistakes: [Question]!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wrongAnswers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let userAnswer = wrongAnswers[indexPath.row]
        let question = questionsWithMistakes[indexPath.row]
        let correctAnswer = question.answers.filter { $0.type == .correct }[0]
        
        content.text = question.text
        content.secondaryText = """
        Твой ответ: \(userAnswer.answer)
        Правильный ответ: \(correctAnswer.answer)
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
