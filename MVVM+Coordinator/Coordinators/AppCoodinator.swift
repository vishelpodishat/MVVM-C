//
//  AppCoodinator.swift
//  MVVM+Coordinator
//
//  Created by Alisher Saideshov on 27.02.2024.
//

import UIKit


final class AppCoodinator: Coordinator {

    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = ViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func openFirstVC() {
        let vc = ViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func openSecondVC() {
        let vc = SecondVC()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func openThirdVC() {
        let vc = ThirdVC()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
