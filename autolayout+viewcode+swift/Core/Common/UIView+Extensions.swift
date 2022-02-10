//
//  UIView+Extensions.swift
//  autolayout+viewcode+swift
//
//  Created by João Vitor Duarte Mariucio on 10/02/22.
//

import Foundation
import UIKit

extension UIView {

    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}
