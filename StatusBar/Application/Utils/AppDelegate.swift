//
//  AppDelegate.swift
//  StatusBar
//
//  Created by nayhan on 27.10.2022.
//

import UIKit
 
var rooter:Navigation?

//Status Bar
var isDark = false {
    didSet {
        UIApplication.shared.statusBarStyle = .lightContent
    }
}


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Thread.sleep(forTimeInterval: 0.0)
        
         
        setNavigation()
        setStatusBar()
        return true
    }
 
    func setNavigation(){
        isDark = true
        //Window UI
        window = UIWindow(frame: UIScreen.main.bounds)
        rooter = Navigation(window: window!)
        rooter?.startApp()
        
    }
    func setStatusBar(){
         
        if #available(iOS 13.0, *) {
           let app = UIApplication.shared
           let statusBarHeight: CGFloat = app.statusBarFrame.size.height

           let statusbarView = UIView()
            statusbarView.backgroundColor = UIColor.orange
            window?.addSubview(statusbarView)

           statusbarView.translatesAutoresizingMaskIntoConstraints = false
           statusbarView.heightAnchor
             .constraint(equalToConstant: statusBarHeight).isActive = true
           statusbarView.widthAnchor
                .constraint(equalTo: window!.widthAnchor, multiplier: 1.0).isActive = true
           statusbarView.topAnchor
             .constraint(equalTo: window!.topAnchor).isActive = true
           statusbarView.centerXAnchor
             .constraint(equalTo: window!.centerXAnchor).isActive = true

        } else {
              let statusBar = UIApplication.shared.value(forKeyPath:
           "statusBarWindow.statusBar") as? UIView
              statusBar?.backgroundColor = UIColor.red
        }
        
    }
}

extension UIApplication {
    var statusBarView: UIView? {
        if responds(to: Selector(("statusBar"))) {
            return value(forKey: "statusBar") as? UIView
        }
        return nil
    }
    
}

