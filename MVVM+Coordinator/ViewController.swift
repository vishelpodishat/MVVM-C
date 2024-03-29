//
//  ViewController.swift
//  MVVM+Coordinator
//
//  Created by Alisher Saideshov on 26.02.2024.
//

import UIKit

final class ViewController: UIViewController {

    weak var coordinator: AppCoodinator?

    // MARK: - UI
    private lazy var toSecondVCButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Second", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(toSecondVC), for: .touchUpInside)
        return button
    }()
    
    private lazy var toThirdVCButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Third", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(toThirdVC), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        view.addSubview(toSecondVCButton)
        view.addSubview(toThirdVCButton)
        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            toSecondVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toSecondVCButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            toSecondVCButton.heightAnchor.constraint(equalToConstant: 50),
            toSecondVCButton.widthAnchor.constraint(equalToConstant: 200),

            toThirdVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toThirdVCButton.centerYAnchor.constraint(equalTo: toSecondVCButton.centerYAnchor, constant: 30),
            toThirdVCButton.heightAnchor.constraint(equalToConstant: 50),
            toThirdVCButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }

    @objc func toSecondVC() {
        coordinator?.openSecondVC()
    }

    @objc func toThirdVC() {
        coordinator?.openThirdVC()
    }
}

