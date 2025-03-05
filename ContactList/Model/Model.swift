//
//  Model.swift
//  ContactList
//
//  Created by Vasiliy on 04.03.2025.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    let phoneImg = "phone"
    let emailImg = "email"
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        let dataStore = DataStore()
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phones = dataStore.phones.shuffled()
        
        for index in 0..<names.count {
            let person = Person (
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            persons.append(person)
        }
        return persons
    }
}
