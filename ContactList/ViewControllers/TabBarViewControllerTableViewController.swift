//
//  TabBarViewControllerTableViewController.swift
//  ContactList
//
//  Created by Vasiliy on 05.03.2025.
//

import UIKit

final class TabBarViewControllerTableViewController: UITabBarController {
    
    private var persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transferData()
        
    }
    
    private func transferData() {
        viewControllers?.forEach {
            let contactsVC = $0 as? ContactsListViewController
            contactsVC?.persons = persons
            
            let sectionVC = $0 as? ContactListSectionViewController
            sectionVC?.persons = persons
        }

    }
    
}

