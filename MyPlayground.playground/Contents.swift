import UIKit

var greeting = "Hello, playground"


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
        for index in 0 ..< minAmount {
            personInfo.append(Person(name: datastore.names.shuffled()[index],
                                     surname: datastore.surnames.shuffled()[index],
                                     email: datastore.emails.shuffled()[index],
                                     phoneNumber: datastore.phoneNumbers.shuffled()[index]))
        }
        return personInfo
    }
}



final class DataStore {
    
    var names = [
        "Bruce",
        "John",
        "Steven",
        "Aaron",
        "Tim",
        "Allan",
        "Sharon",
        "Ted",
        "Carl",
        "Nicola"
    ]
    
    var surnames = [
        "Butler",
        "Smith",
        "Black",
        "Robertson",
        "Murphy",
        "Williams",
        "Isaacson",
        "Jankin",
        "Pennyworth",
        "Dow"
    ]
    
    var emails = [
        "aaa@mail.ru",
        "bbb@mail.ru",
        "ccc@mail.ru",
        "ddd@mail.ru",
        "eee@mail.ru",
        "fff@mail.ru",
        "ggg@mail.ru",
        "hhh@mail.ru",
        "iii@mail.ru",
        "jjj@mail.ru"
    ]
    
    var phoneNumbers = [
        "50202533",
        "50212533",
        "50222533",
        "50232533",
        "50242533",
        "50252533",
        "50262533",
        "50272533",
        "50282533",
        "50292533"
    ]
    
    
    
}

var datastore = DataStore()
let amountOfnames = datastore.names.count
let amountOfsurnames = datastore.names.count
let amountOfEmails = datastore.emails.count
let amountOfPHoneNumbers = datastore.phoneNumbers.count
let minAmount = min(amountOfnames, amountOfsurnames, amountOfEmails, amountOfPHoneNumbers)




print(Person.getPerson())
