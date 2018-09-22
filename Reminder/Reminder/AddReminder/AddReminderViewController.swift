//
//  AddReminderViewController.swift
//  Reminder
//
//  Created by Lorrayne Paraiso  on 22/09/18.
//  Copyright © 2018 Lorrayne Paraiso. All rights reserved.
//

import RemindersCore
import UIKit

class AddReminderViewController: UIViewController {

    var presenter: AddReminderPresenter!

    private var titleTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }

    private func initView() {
        view.backgroundColor = .white
        title = "Add Reminder"
        navigationController?.navigationBar.prefersLargeTitles = true
        setRightBarButton()
        setLeftBarButton()
        addTitleTextField()
    }

    private func setRightBarButton() {
        let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveReminder))
        navigationItem.setRightBarButtonItems([saveButton], animated: false)
    }

    private func setLeftBarButton() {
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancel))
        navigationItem.setLeftBarButtonItems([cancelButton], animated: false)
    }

    private func addTitleTextField() {
        titleTextField = UITextField()
        titleTextField.placeholder = "Title"
        view.addSubview(titleTextField)
        setTitleTextFieldConstraints()
    }

    private func setTitleTextFieldConstraints() {
        let margins = view.layoutMarginsGuide
        titleTextField.translatesAutoresizingMaskIntoConstraints = false
        titleTextField.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        titleTextField.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        let topAnchor = view.safeAreaLayoutGuide.topAnchor
        titleTextField.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
    }

    @objc func saveReminder() {
        presenter.save()
    }

    @objc func cancel() {
        presenter.cancel()
    }
}

extension AddReminderViewController: AddReminderView {
    var reminderTitle: String {
        return titleTextField.text ?? ""
    }
}
