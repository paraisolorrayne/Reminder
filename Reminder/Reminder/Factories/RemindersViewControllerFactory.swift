//
//  RemindersControllerFactory.swift
//  Reminder
//
//  Created by Lorrayne Paraiso  on 22/09/18.
//  Copyright © 2018 Lorrayne Paraiso. All rights reserved.
//

import RemindersCore
import UIKit

class RemindersControllerFactory: ControllerFactory {

    let router: Router
    let repository: RemindersRepository

    init(router: Router, repository: RemindersRepository) {
        self.router = router
        self.repository = repository
    }

    func build() -> ViewController {
        let controller = RemindersViewController()
        let presenter = RemindersPresenter(view: controller,
                                           router: router,
                                           repository: repository)
        controller.presenter = presenter
        return UINavigationController(rootViewController: controller)
    }
}
