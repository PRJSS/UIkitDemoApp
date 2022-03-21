//
//  AppDelegate.swift
//  Demo
//
//  Created by Бернат Данила on 20.03.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let nav1 = UINavigationController() //navigation controller
        nav1.viewControllers = [ViewController()]
        window?.rootViewController = nav1
        window?.makeKeyAndVisible()
        return true
    }
    
}
