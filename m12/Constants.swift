//
//  Constants.swift
//  m12
//
//  Created by Matvey Alesin on 16.11.23.
//

import UIKit

enum Constants {
    enum Colors {
        static var starGold: UIColor? {
            UIColor(named: "StarGold")
        }
        
        static var noirBlack: UIColor? {
            UIColor(named: "NoirBlack")
        }
        
        static var appleRed: UIColor? {
            UIColor(named: "AppleRed")
        }
    }
    
    enum Fonts {
        static var hackFont: UIFont? {
            UIFont(name: "Hack-Regular", size: 30)
        }
        
        static var isocpeurFont: UIFont? {
            UIFont(name: "isocpeur", size: 30)
        }
        
        static var jetbrainsMonoFont: UIFont? {
            UIFont(name: "JetBrainsMono-Regular", size: 30)
        }
    }
    
    enum Image {
        static let star = UIImage(named: "Star")
    }
    
    enum Text {
        static let cat = Bundle.main.localizedString(forKey: "Cat", value: "", table: "Localizable")
        static let dog = Bundle.main.localizedString(forKey: "Dog", value: "", table: "Localizable")
        static let lion = Bundle.main.localizedString(forKey: "Lion", value: "", table: "Localizable")
        static let helloWorld = Bundle.main.localizedString(forKey: "Hello ßWorld!", value: "", table: "Localizable")
    }
}
