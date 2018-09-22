//
//  ViewController.swift
//  Reminder
//
//  Created by Lorrayne Paraiso  on 22/09/18.
//  Copyright © 2018 Lorrayne Paraiso. All rights reserved.
//

protocol ViewController: class {
    var presentedView: ViewController? { get }
    func present(_ viewControllerToPresent: ViewController)
    func dismiss()
}
