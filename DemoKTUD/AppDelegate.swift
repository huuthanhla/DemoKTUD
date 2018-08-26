//
//  AppDelegate.swift
//  DemoKTUD
//
//  Created by MINATO on 8/26/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let numberModule = NumberWireframe()
        let numberVC = numberModule.getModule(initNumber: 3)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = numberVC
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

