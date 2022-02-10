//
//  NSLayoutConstraint+Extensions.swift
//  autolayout+viewcode+swift
//
//  Created by João Vitor Duarte Mariucio on 10/02/22.
//

import Foundation
import UIKit

extension NSLayoutConstraint {

    static func activate(_ constraints: [NSLayoutConstraint]...) {
        constraints.forEach {
            NSLayoutConstraint.activate($0)
        }
    }
}
