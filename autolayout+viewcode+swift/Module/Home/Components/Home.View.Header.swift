//
//  Home.View.Header.swift
//  autolayout+viewcode+swift
//
//  Created by João Vitor Duarte Mariucio on 10/02/22.
//

import Foundation
import UIKit

extension Module.Home.View {

    class Header: UIView, ViewCode {

        // MARK: - Components

        @UsesAutoLayout
        var leftButton: UIButton = {
            var button = UIButton()
            button.setImage(UIImage(systemName: "arrow.backward"), for: .normal)
            button.tintColor = .black
            return button
        }()

        @UsesAutoLayout
        private var titleLabel: UILabel = {
            var label = UILabel()
            label.textColor = .black
            label.textAlignment = .center
            return label
        }()

        @UsesAutoLayout
        var rightButton: UIButton = {
            var button = UIButton()
            button.tintColor = .black
            return button
        }()

        // MARK: - Variables

        var title: String? {
            didSet {
                titleLabel.text = title
            }
        }

        // MARK: - Initializers

        override init(frame: CGRect) {
            super.init(frame: frame)
            applyViewCode()
        }

        required init?(coder: NSCoder) {
            super.init(coder: coder)
            applyViewCode()
        }

        // MARK: - ViewCode

        func buildHierarchy() {
            addSubviews(
                leftButton,
                rightButton,
                titleLabel
            )
        }

        func setupConstraints() {
            let leftButtonConstraints = [
                leftButton.topAnchor.constraint(equalTo: topAnchor),
                leftButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
                leftButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.05)
            ]

            let rightButtonConstraints = [
                rightButton.topAnchor.constraint(equalTo: topAnchor),
                rightButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
                rightButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.05)
            ]

            let titileLabelConstraints = [
                titleLabel.topAnchor.constraint(equalTo: topAnchor),
                titleLabel.leadingAnchor.constraint(equalTo: leftButton.trailingAnchor),
                titleLabel.trailingAnchor.constraint(equalTo: rightButton.leadingAnchor),
                titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
            ]

            NSLayoutConstraint.activate(leftButtonConstraints, rightButtonConstraints, titileLabelConstraints)
        }

        func configureViews() {
            titleLabel.text = title
            backgroundColor = .white
        }
    }
}
