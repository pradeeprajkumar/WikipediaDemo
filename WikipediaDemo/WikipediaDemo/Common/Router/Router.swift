//
//  Router.swift
//  WikipediaDemo
//
//  Created by Pradeep Rajkumar on 07/10/18.
//  Copyright © 2018 Pradeep Rajkumar. All rights reserved.
//

import UIKit
class Router {
    //Singleton object
    static let sharedInstance = Router()
    let storyBoard: UIStoryboard
    
    init() {
        storyBoard = UIStoryboard(name: "Search", bundle: nil)
    }
    
    func showHomeViewController() -> UINavigationController? {
        //Home screen change logic to be implemented here.
        return showSearchViewController()
    }
    
    func showSearchViewController() -> UINavigationController? {
        let navController = storyBoard.instantiateViewController(withIdentifier: "SearchNavigationController") as? UINavigationController
        return navController
    }
    
    func showDetailsViewController() -> UIViewController? {
        let viewController = storyBoard.instantiateViewController(withIdentifier: "DetailsViewController") as UIViewController
        return viewController
    }
}
