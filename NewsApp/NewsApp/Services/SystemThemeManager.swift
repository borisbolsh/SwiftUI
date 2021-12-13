//
//  SystemThemeManager.swift
//  NewsApp
//
//  Created by Boris Bolshakov on 13.12.21.
//

import UIKit

class SystemThemeManager {
    
    static let shared = SystemThemeManager()
    private init() {}
    
    func handleTheme(darkMode: Bool, system: Bool) {
        guard !system else {
            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .unspecified
            return
        }
        
        UIApplication.shared.windows.first?.overrideUserInterfaceStyle = darkMode ? .dark : .light
    }
    
    
    
    
    
}
