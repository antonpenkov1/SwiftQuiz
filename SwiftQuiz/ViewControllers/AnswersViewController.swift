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
        wrongAnswers.count
    }
       
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let content = UIView()
        
        let headerLabel = UILabel(
            frame: CGRect(
                x: 20,
                y: 3,
                width: tableView.frame.width - 32,
                height: 50
            )
        )
        let question = questionsWithMistakes[section]
        headerLabel.text = question.text
        headerLabel.font = UIFont.systemFont(ofSize: 12)
        headerLabel.numberOfLines = 0
        headerLabel.lineBreakMode = .byWordWrapping
        headerLabel.textColor = UIColor(white: 1, alpha: 0.95)
        
        content.frame = CGRect(x: 0, y: 0, width: tableView.frame.width - 32, height: 50)
        content.addSubview(headerLabel)
        content.backgroundColor = UIColor(
            red: 0.54,
            green: 0.47,
            blue: 0.91,
            alpha: 1
        )
        
        return content
    }
    
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)
           
           var content = cell.defaultContentConfiguration()
           let userAnswer = wrongAnswers[indexPath.section]
           let question = questionsWithMistakes[indexPath.section]
           let correctAnswer = question.answers.filter { $0.type == .correct }[0]
           
           content.text = "Твой ответ: \(userAnswer.answer)"
           content.secondaryText = "Правильный ответ: \(correctAnswer.answer)"
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
