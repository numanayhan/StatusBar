//
//  Navigation.swift
//  StatusBar
//
//  Created by nayhan on 27.10.2022.
//

import Foundation
import UIKit

class Navigation {
    private let window : UIWindow?
    init(window: UIWindow ) {
        self.window = window
    }
    func startApp() {
        window!.rootViewController = UINavigationController(rootViewController: Launch())
        window!.makeKeyAndVisible()
    }
    
    
}
