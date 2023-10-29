//
//  TabBarVirwController.swift
//  contactTableList
//
//  Created by Александр Тиунович on 26.10.23.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    var person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        setupViewControllers()
    }
    
    
    private func setupViewControllers() {
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let navigationController = viewController as? UINavigationController {
                if let contactVC = navigationController.topViewController as? ContactListViewController {
                    contactVC.person = person
                } else if let fullListVC = navigationController.topViewController as? FullListViewController {
                    fullListVC.person = person
                }
            }
        }
    }
    
    
}
