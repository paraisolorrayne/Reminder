//
//  UIWindow+Window.swift
//  Reminder
//
//  Created by Lorrayne Paraiso  on 22/09/18.
//  Copyright © 2018 Lorrayne Paraiso. All rights reserved.
//

import UIKit

extension UIWindow: Window {
    var rootView: ViewController? {
        get {
            return self.rootViewController
        }
        set {
            rootViewController = newValue as? UIViewController
        }
    }
}
