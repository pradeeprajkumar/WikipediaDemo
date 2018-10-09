//
//  AppDelegate.swift
//  WikipediaDemo
//
//  Created by Pradeep Rajkumar on 07/10/18.
//  Copyright © 2018 Pradeep Rajkumar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        setupInitialConfigurations()
        return true
    }
    
    func setupInitialConfigurations() {
        //Home screen
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.rootViewController = Router.sharedInstance.showHomeViewController()
        self.window?.makeKeyAndVisible()
    }
}

