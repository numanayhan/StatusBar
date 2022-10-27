//
//  Launch.swift
//  StatusBar
//
//  Created by nayhan on 27.10.2022.
//

import UIKit

class Launch: UIViewController {

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setStatusBar(theme: "light")
        
    }
}
