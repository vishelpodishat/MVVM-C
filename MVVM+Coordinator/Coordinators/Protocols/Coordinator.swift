//
//  Coordinator.swift
//  MVVM+Coordinator
//
//  Created by Alisher Saideshov on 27.02.2024.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }

    func start()
}


