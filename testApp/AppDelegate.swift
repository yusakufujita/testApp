//
//  AppDelegate.swift
//  testApp
//
//  Created by 藤田優作 on 2020/10/05.
//

import UIKit
import CoreData
import Firebase
import FirebaseUI


@main
class AppDelegate: UIResponder,UIApplicationDelegate, FUIAuthDelegate  {
    
    var window: UIWindow?
    // MARK: UISceneSession Lifecycle

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        let sourceApplication = options[UIApplication.OpenURLOptionsKey.sourceApplication] as! String?
        if FUIAuth.defaultAuthUI()?.handleOpen(url, sourceApplication: sourceApplication) ?? false{
            return true
        }
        return false
    }
    
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
    // Swift
    
    
//    func authPickerViewController(for authUI: FUIAuth) -> FUIAuthPickerViewController {
//      return CustomAuthPickerViewController(authUI: authUI)
//    }
    
    func authPickerViewController(forAuthUI authUI: FUIAuth) -> FUIAuthPickerViewController {
      return CustomAuthPickerViewController(nibName: "CustomAuthPickerViewController.xib",
                                               bundle: Bundle.main,
                                               authUI: authUI)
    }
    
  
}

