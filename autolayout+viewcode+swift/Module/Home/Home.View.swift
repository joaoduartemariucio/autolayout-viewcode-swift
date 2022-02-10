//
//  Home.View.swift
//  autolayout+viewcode+swift
//
//  Created by João Vitor Duarte Mariucio on 10/02/22.
//

import UIKit

extension Module.Home {

    class View: UIView, ViewCode {

        // MARK: - Components

        @UsesAutoLayout
        var headerView = View.Header()

        @UsesAutoLayout
        private var redView = UIView()

        @UsesAutoLayout
        private var contentColorsView = UIView()

        @UsesAutoLayout
        private var grayView = UIView()

        @UsesAutoLayout
        private var yellowView = UIView()

        @UsesAutoLayout
        private var greenView = UIView()

        @UsesAutoLayout
        private var blueView = UIView()

        @UsesAutoLayout
        var nextExampleButton: UIButton = {
            var button = UIButton()
            button.setTitle("Proximo exemplo", for: .normal)
            button.tintColor = .black
            return button
        }()

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
            addSubviews(headerView, redView, contentColorsView, nextExampleButton)
            contentColorsView.addSubviews(grayView, yellowView, blueView, greenView)
        }

        func setupConstraints() {

            let headerConstraints = [
                headerView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                headerView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
                headerView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
//                headerView.heightAnchor.constraint(greaterThanOrEqualTo: heightAnchor, multiplier: 0.025),
                headerView.heightAnchor.constraint(lessThanOrEqualTo: heightAnchor, multiplier: 0.050)
            ]

            let redViewConstraints = [
                redView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 8),
                redView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
                redView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
                redView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.10)
            ]

            let contentColorsViewConstraints = [
                contentColorsView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 8),
                contentColorsView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.75),
//                contentColorsView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.50),
                contentColorsView.centerXAnchor.constraint(equalTo: centerXAnchor)
            ]

            let grayViewConstraints = [
                grayView.topAnchor.constraint(equalTo: contentColorsView.topAnchor),
                grayView.bottomAnchor.constraint(equalTo: contentColorsView.bottomAnchor),
                grayView.leadingAnchor.constraint(equalTo: contentColorsView.leadingAnchor),
                grayView.widthAnchor.constraint(equalTo: contentColorsView.widthAnchor, multiplier: 0.25)
            ]

            let yellowViewConstraints = [
                yellowView.topAnchor.constraint(equalTo: contentColorsView.topAnchor),
                yellowView.bottomAnchor.constraint(equalTo: contentColorsView.bottomAnchor),
                yellowView.leadingAnchor.constraint(equalTo: grayView.trailingAnchor),
                yellowView.widthAnchor.constraint(equalTo: contentColorsView.widthAnchor, multiplier: 0.25)
            ]

            let greenViewConstraints = [
                greenView.topAnchor.constraint(equalTo: contentColorsView.topAnchor),
                greenView.bottomAnchor.constraint(equalTo: contentColorsView.bottomAnchor),
                greenView.leadingAnchor.constraint(equalTo: yellowView.trailingAnchor),
                greenView.widthAnchor.constraint(equalTo: contentColorsView.widthAnchor, multiplier: 0.25)
            ]

            let blueViewConstraints = [
                blueView.topAnchor.constraint(equalTo: contentColorsView.topAnchor),
                blueView.bottomAnchor.constraint(equalTo: contentColorsView.bottomAnchor),
                blueView.leadingAnchor.constraint(equalTo: greenView.trailingAnchor),
                blueView.trailingAnchor.constraint(equalTo: contentColorsView.trailingAnchor),
                blueView.widthAnchor.constraint(equalTo: contentColorsView.widthAnchor, multiplier: 0.25)
            ]

            let nextExampleButtonConstraints = [
                nextExampleButton.topAnchor.constraint(equalTo: contentColorsView.bottomAnchor, constant: 8),
                nextExampleButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
                nextExampleButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
                nextExampleButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.05),
                nextExampleButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
            ]

            NSLayoutConstraint.activate(
                headerConstraints,
                redViewConstraints,
                contentColorsViewConstraints,
                grayViewConstraints,
                yellowViewConstraints,
                greenViewConstraints,
                blueViewConstraints,
                nextExampleButtonConstraints
            )
        }

        func configureViews() {
            backgroundColor = .white
            redView.backgroundColor = .red
            grayView.backgroundColor = .gray
            yellowView.backgroundColor = .yellow
            greenView.backgroundColor = .green
            blueView.backgroundColor = .blue
            headerView.title = "Home"
            nextExampleButton.backgroundColor = .brown
        }
    }
}
