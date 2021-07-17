//
//  AppDelegate.swift
//  PreviewingViewControllers
//
//  Created by Zafar on 15/07/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.rootViewController = UINavigationController(rootViewController: UsersViewController())
        window?.makeKeyAndVisible()
        
        return true
    }

}

