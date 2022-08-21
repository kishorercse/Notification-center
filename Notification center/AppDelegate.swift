//
//  AppDelegate.swift
//  Notification center
//
//  Created by kishore-pt5557 on 19/08/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tabBarController = UITabBarController()
        tabBarController.tabBar.backgroundColor = .white
        tabBarController.tabBar.tintColor = .black
        let v1 = ViewController(), v2 = ViewController2(), v3 = ViewController3()
        v1.title = "View 1"
        v2.title = "View 2"
        v3.title = "View 3"
        NotificationCenter.default.addObserver(v2, selector: #selector(v2.notificationReceived), name: Notification.Name("Change background color"), object: nil)
        NotificationCenter.default.addObserver(v3, selector: #selector(v3.notificationReceived), name: Notification.Name("Change background color"), object: nil)
        tabBarController.setViewControllers([v1, v2, v3], animated: true)
        window?.rootViewController = tabBarController
        return true
    }

}

