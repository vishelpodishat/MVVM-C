//
//  SecondVC.swift
//  MVVM+Coordinator
//
//  Created by Alisher Saideshov on 27.02.2024.
//

import UIKit

final class SecondVC: UIViewController {

    weak var coordinator: AppCoodinator?

    // MARK: - UI
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

    private lazy var toThirdVCButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Third", for: .normal)
        button.addTarget(self, action: #selector(toThirdVC), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        view.addSubview(toFirstVCButton)
        view.addSubview(toThirdVCButton)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            toFirstVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toFirstVCButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            toFirstVCButton.heightAnchor.constraint(equalToConstant: 50),
            toFirstVCButton.widthAnchor.constraint(equalToConstant: 200),

            toThirdVCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toThirdVCButton.centerYAnchor.constraint(equalTo: toFirstVCButton.centerYAnchor, constant: 30),
            toThirdVCButton.heightAnchor.constraint(equalToConstant: 50),
            toThirdVCButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }

    @objc func toFirstVC() {
        coordinator?.openFirstVC()
    }

    @objc func toThirdVC() {
        coordinator?.openThirdVC()
    }
}

