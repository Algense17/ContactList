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
    // Устанавливаем кол-во секций
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    // Устанавливает кол-во строк
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    // Заголовок у каждой секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCellSection", for: indexPath)
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(named: person.emailImg)
            content.text = "\(person.email)"
        case 1:
            content.image = UIImage(named: person.phoneImg)
            content.text = "\(person.phone)"
        default:
            content.text = ""
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
