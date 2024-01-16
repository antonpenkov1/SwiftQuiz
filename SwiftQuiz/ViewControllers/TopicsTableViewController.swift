//
//  TopicsTableViewController.swift
//  SwiftQuiz
//
//  Created by Антон Пеньков on 15.01.2024.
//

import UIKit

final class TopicsTableViewController: UITableViewController {
    
    var topics: [Topic.RawValue]!

    override func numberOfSections(in tableView: UITableView) -> Int {
        topics.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = topics[indexPath.row]
        
        cell.contentConfiguration = content
        return cell
    }
    
}
