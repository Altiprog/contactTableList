//
//  Person.swift
//  contactTableList
//
//  Created by Александр Тиунович on 26.10.23.
//

import Foundation

struct Person {
    
    
    var name: String
    var surname: String
    var email: String
    var phoneNumber: String
    var fullName: String {
        "\(name) \(surname)"
    }

    static func getPerson() -> [Person] {
        var personInfo: [Person] = []
        for index in 0 ..< datastore.names.count {
            personInfo.append(Person(name: datastore.names.shuffled()[index],
                                    surname: datastore.surnames.shuffled()[index],
                                     email: datastore.emails.shuffled()[index],
                                     phoneNumber: datastore.phoneNumbers.shuffled()[index]))
        }
        return personInfo
    }
}
