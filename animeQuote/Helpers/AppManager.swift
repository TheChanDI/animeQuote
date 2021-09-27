//
//  AppManager.swift
//  animeQuote
//
//  Created by ENFINY INNOVATIONS on 9/16/21.
//

import UIKit

class AppManager {
    
    static let shared = AppManager()
    
    static func startApp() -> UIViewController {
        
        return ViewController()
        
    }
    
}
