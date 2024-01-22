//
//  TopicListTableViewController.swift
//  SwiftQuiz
//
//  Created by Александр Зинин on 16.01.2024.
//

import UIKit

final class TopicListViewController: UITableViewController {
    private let topicList = DataStore.shared.allTopics
    private var cellTextColor = UIColor(
        red: 246 / 255,
        green: 246 / 255,
        blue: 246 / 255,
        alpha: 1
    )
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsVC = segue.destination as? TopicDetailsViewController
        detailsVC?.topic = topicList[indexPath.row]
        detailsVC?.topicNumber = indexPath.row + 1
    }
}

// MARK: - UITableViewDataSource
extension TopicListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        topicList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)
        let topic = topicList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(indexPath.row + 1). \(topic.name.rawValue)"
        content.textProperties.color = cellTextColor
        content.textProperties.font = UIFont(name: "KohinoorBangla-Semibold", size: 20) ?? .systemFont(ofSize: 20)
        cell.contentConfiguration = content
        return cell
    }
}

// MARK: - UITableViewDelegate
extension TopicListViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let content = UIView()
        
        let headerLabel = UILabel(
            frame: CGRect(
                x: 16,
                y: 3,
                width: tableView.frame.width - 32,
                height: 20
            )
        )
        headerLabel.text = "Основы программирования на Swift"
        headerLabel.textColor = UIColor(white: 1, alpha: 0.95)
        content.addSubview(headerLabel)
        content.backgroundColor = UIColor(
            red: 0.54,
            green: 0.47,
            blue: 0.91,
            alpha: 1
        )
        
        return content
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        30
    }    
}
