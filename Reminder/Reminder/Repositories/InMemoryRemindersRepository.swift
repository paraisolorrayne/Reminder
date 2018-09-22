//
//  InMemoryRemindersRepository.swift
//  Reminder
//
//  Created by Lorrayne Paraiso  on 22/09/18.
//  Copyright © 2018 Lorrayne Paraiso. All rights reserved.
//

import RemindersCore

class InMemoryRemindersRepository: RemindersRepository {

    private var reminders = [Reminder]()

    func save(_ reminder: Reminder) {
        reminders.append(reminder)
    }

    func load() -> [Reminder] {
        return reminders
    }
}
