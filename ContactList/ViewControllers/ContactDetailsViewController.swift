//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Vasiliy on 04.03.2025.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    @IBOutlet private var phoneLabel: UILabel!
    @IBOutlet private var emailLbale: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text = person.phone
        emailLbale.text = person.email
    }

}
