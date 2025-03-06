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

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personDetailsVC = segue.destination as? ContactDetailsViewController
        personDetailsVC?.person = persons[indexPath.row]
    }
    
}
// MARK: - UITableViewDataSource
extension ContactsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
        
    }
    
}



