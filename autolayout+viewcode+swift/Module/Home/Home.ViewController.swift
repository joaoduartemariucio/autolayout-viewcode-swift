//
//  Home.ViewController.swift
//  autolayout+viewcode+swift
//
//  Created by João Vitor Duarte Mariucio on 10/02/22.
//

import Foundation
import UIKit

extension Module.Home {

    class ViewController: UIViewController {

        let mainView = View()

        override func loadView() {
            view = mainView
        }

        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            navigationController?.setNavigationBarHidden(true, animated: false)
        }

        override func viewDidLoad() {
            super.viewDidLoad()

            mainView.nextExampleButton.addTarget(
                self,
                action: #selector(nextExampleDidTap(_:)),
                for: .touchUpInside
            )
        }

        @objc
        func nextExampleDidTap(_ sender: UIButton) {
            let controller = Module.NextExample.ViewController()
            navigationController?.pushViewController(controller, animated: true)
        }
    }
}
