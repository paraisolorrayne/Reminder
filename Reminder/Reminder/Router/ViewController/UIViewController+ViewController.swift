//
//  UIViewController+ViewController.swift
//  Reminder
//
//  Created by Lorrayne Paraiso  on 22/09/18.
//  Copyright © 2018 Lorrayne Paraiso. All rights reserved.
//

import UIKit

extension UIViewController: ViewController {

    var presentedView: ViewController? {
        return presentedViewController
    }
    
    func dismiss() {
        dismiss(animated: true, completion: nil)
    }

    func present(_ viewControllerToPresent: ViewController) {
        if let viewControllerToPresent = viewControllerToPresent as? UIViewController {
            present(viewControllerToPresent, animated: true, completion: nil)
        }
    }
}
