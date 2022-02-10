//
//  NextExample.ViewController.swift
//  autolayout+viewcode+swift
//
//  Created by João Vitor Duarte Mariucio on 10/02/22.
//

import Foundation
import UIKit

extension Module.NextExample {

    class ViewController: UIViewController {

        let mainView = View()

        override func loadView() {
            view = mainView
        }

        override func viewDidLoad() {
            super.viewDidLoad()

            mainView.headerView.leftButton.addTarget(
                self,
                action: #selector(backButton(_:)),
                for: .touchUpInside
            )
        }

        @objc
        func backButton(_ sender: UIButton) {
            navigationController?.popViewController(animated: true)
        }
    }
}
