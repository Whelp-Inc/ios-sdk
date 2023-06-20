//
//  AppDelegate.swift
//  WhelpChatTest
//
//  Created by Rashad Shirizada on 27.04.22.
//

import UIKit
import WhelpChat

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let params: [String:Any] = [
            "language": "en", // language code, default is auto
            "contact": [ // set contacts default and custom fields
                "email": "YOUR EMAIL",
                "fullname": "YOUR_FULLNAME",
                "phone": "YOUR_PHONE"
                
                       ]
        ]
        
        let config = ChatConfiguration(apiKey: "YOUR_API_KEY", appId: "YOUR_APP_ID", params: params)
        ChatManager.configuration = config
        
        
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
}

