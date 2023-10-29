//
//  FullListViewController.swift
//  contactTableList
//
//  Created by Александр Тиунович on 26.10.23.
//

import UIKit

class FullListViewController: UITableViewController {

    var person = Person.getPerson()
    
  
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return person.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
        
    }
    
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
            var content = cell.defaultContentConfiguration()
            let person = person[indexPath.row]
            
            content.text = person.phoneNumber
          
            
            cell.contentConfiguration = content
           
            return cell
        }
    
    
    

}
