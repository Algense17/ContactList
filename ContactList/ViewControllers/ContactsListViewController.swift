//
//  ContactsListViewController.swift
//  ContactList
//
//  Created by Vasiliy on 04.03.2025.
//

import UIKit

final class ContactsListViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 40
        
        // Устанавливаем название кнопки "Назад"
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        self.navigationItem.backBarButtonItem = backButton

    }
    // Настройка сигвея
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personDetailsVC = segue.destination as? ContactDetailsViewController
        personDetailsVC?.person = persons[indexPath.row]
    }
    
}
// MARK: - UITableViewDataSource
extension ContactsListViewController {
    // Задаем кол-во строк
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    // Задаем формат строк
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
        
    }
    
}



