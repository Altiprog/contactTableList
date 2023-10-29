//
//  ContactListViewController.swift
//  contactTableList
//
//  Created by Александр Тиунович on 26.10.23.
//

import UIKit

class ContactListViewController: UITableViewController {

    var person: [Person]!

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "personInfo" {
            guard let detailsVC = segue.destination as? DetailsViewController else {return}
            detailsVC.person = sender as? Person
        }

    }
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        
    }
    
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
            var content = cell.defaultContentConfiguration()
            let person = person[indexPath.row]
            
            content.text = person.fullName
            cell.contentConfiguration = content
           
            return cell
        }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = person[indexPath.row]
        performSegue(withIdentifier: "personInfo", sender: person)
    }
    
}




    
        
            
            
