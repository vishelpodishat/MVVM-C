//
//  ThirdVC.swift
//  MVVM+Coordinator
//
//  Created by Alisher Saideshov on 27.02.2024.
//

import UIKit

final class ThirdVC: UIViewController {

    weak var coordinator: AppCoodinator?

    // MARK: - UI
    private lazy var toSecondVCButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Second", for: .normal)
        button.addTarget(self, action: #selector(toSecondVC), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var toFirstVCButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.setTitleColor(.white, for: .normal)
        button.setTitle("First", for: .normal)
        button.addTarget(self, action: #selector(toFirstVC), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        view.addSubview(toSecondVCButton)
        view.addSubview(toFirstVCButton)
        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            toSecondVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toSecondVCButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            toSecondVCButton.heightAnchor.constraint(equalToConstant: 50),
            toSecondVCButton.widthAnchor.constraint(equalToConstant: 200),

            toFirstVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toFirstVCButton.centerYAnchor.constraint(equalTo: toFirstVCButton.centerYAnchor, constant: 30),
            toFirstVCButton.heightAnchor.constraint(equalToConstant: 50),
            toFirstVCButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }

    @objc func toFirstVC() {
        coordinator?.openFirstVC()
    }

    @objc func toSecondVC() {
        coordinator?.openSecondVC()
    }
}
