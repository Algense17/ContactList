//
//  ContactListSectionViewController.swift
//  ContactList
//
//  Created by Vasiliy on 05.03.2025.
//

import UIKit

final class ContactListSectionViewController: UITableViewController {
    
    var persons: [Person]!
    
}
// MARK: - UITableViewDataSource
extension ContactListSectionViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCellSection", for: indexPath)
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: "phone")
            content.text = "\(person.email)"
        default:
            content.image = UIImage(systemName: "envelope")
            content.text = "\(person.phone)"
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
