//
//  AppDelegate.swift
//  Todoey
//
//  Created by Benélo on 21/12/2018.
//  Copyright © 2018 ben. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        do {
            _ = try Realm()
        } catch {
            print("Error initializing realm: \(error)")
        }
        
        return true
    }

}

