//
//  DevelopersViewController.swift
//  SwiftQuiz
//
//  Created by Варвара Уткина on 11.01.2024.
//

import UIKit

final class DevelopersViewController: UITableViewController {
    private let team = Developer.getDevelopers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 100
    }
    
    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        let typesOfSections = Set(team.map {$0.role})
        return typesOfSections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sortedTeam: [Developer]
        
        switch team[section].role {
        case .teamLead:
            sortedTeam = team.filter { $0.role == .teamLead }
        default:
            sortedTeam = team.filter { $0.role == .developer }
        }
        
        return sortedTeam.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let role: Role
        role = section == 0 ? .teamLead : .developer
        return role.rawValue
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "devCell", for: indexPath)
        var person: Developer
        
        if team[indexPath.section].role == .teamLead {
            let teamLead = team.filter { $0.role == .teamLead }
            person = teamLead[indexPath.section]
        } else {
            let developers = team.filter { $0.role == .developer }
            person = developers[indexPath.row]
        }
        var content = cell.defaultContentConfiguration()
        content.text = person.name
        content.textProperties.color = UIColor(white: 1, alpha: 0.95)
        content.textProperties.font = UIFont(name: "KohinoorBangla-Semibold", size: 20) ?? .systemFont(ofSize: 20)
        content.secondaryText = person.developedQuiz
        content.secondaryTextProperties.color = UIColor(white: 1, alpha: 0.95)
        content.secondaryTextProperties.font = UIFont(name: "KohinoorBangla-Semibold", size: 14) ?? .systemFont(ofSize: 14)
        content.image = UIImage(named: person.photo)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let contentView = UIView()
        
        let headerLabel = UILabel(
            frame: CGRect(
                x: 16,
                y: 3,
                width: tableView.frame.width - 32,
                height: 20
            )
        )
        let role: Role
        role = section == 0 ? .teamLead : .developer
        headerLabel.text = role.rawValue
        headerLabel.textColor = UIColor(white: 1, alpha: 0.95)
        contentView.addSubview(headerLabel)
        
        return contentView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        30
    }
}
