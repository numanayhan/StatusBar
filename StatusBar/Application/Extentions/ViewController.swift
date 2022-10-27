//
//  ViewController.swift
//  StatusBar
//
//  Created by nayhan on 27.10.2022.
//

import Foundation
import UIKit


extension UIViewController{
    
    func setStatusBar(theme:String){
        if theme == "dark"{
            isDark = true
            UIApplication.shared.statusBarStyle = .default
            setNeedsStatusBarAppearanceUpdate()
        }else if theme == "light" {
            isDark = false
            UIApplication.shared.statusBarStyle = .lightContent
            setNeedsStatusBarAppearanceUpdate()
        }
    }
    
}
