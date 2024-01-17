//
//  TopicListTableViewController.swift
//  SwiftQuiz
//
//  Created by Александр Зинин on 16.01.2024.
//

import UIKit

final class TopicListViewController: UITableViewController {
    private let topicList = Topic.getTopics()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsVC = segue.destination as? TopicDetailsViewController
        detailsVC?.topic = topicList[indexPath.row]
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
        content.text = topic.name
        cell.contentConfiguration = content
        return cell
    }
}
