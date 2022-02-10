//
//  NextExample.View.swift
//  autolayout+viewcode+swift
//
//  Created by João Vitor Duarte Mariucio on 10/02/22.
//

import UIKit

extension Module.NextExample {

    class View: UIView, ViewCode {

        // MARK: - Components

        @UsesAutoLayout
        private var scrolView = UIScrollView()

        @UsesAutoLayout
        private var mainStack: UIStackView = {
            let stack = UIStackView()
            stack.axis = .vertical
            stack.spacing = 8
            stack.layoutMargins = .zero
            stack.isLayoutMarginsRelativeArrangement = true
            return stack
        }()

        var headerView = Module.Home.View.Header()
        private var redView = UIView()
        private var contentColorsView = UIView()

        @UsesAutoLayout
        private var contentColorsStack: UIStackView = {
            let stack = UIStackView()
            stack.axis = .horizontal
            stack.distribution = .fillEqually
            return stack
        }()

        private var grayView = UIView()
        private var yellowView = UIView()
        private var greenView = UIView()
        private var blueView = UIView()

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
            addSubview(scrolView)
            scrolView.addSubview(mainStack)
            contentColorsStack.addArrangedSubviews(grayView, yellowView, greenView, blueView)
            contentColorsView.addSubview(contentColorsStack)
            mainStack.addArrangedSubviews(headerView, redView, contentColorsView)
        }

        func setupConstraints() {

            let scrolViewConstraints = [
                scrolView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
                scrolView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
                scrolView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
                scrolView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
            ]

            let mainStackConstraints = [
                mainStack.topAnchor.constraint(equalTo: scrolView.topAnchor),
                mainStack.leadingAnchor.constraint(equalTo: scrolView.leadingAnchor),
                mainStack.trailingAnchor.constraint(equalTo: scrolView.trailingAnchor),
                mainStack.bottomAnchor.constraint(equalTo: scrolView.bottomAnchor),
                mainStack.widthAnchor.constraint(equalTo: widthAnchor)
            ]

            let contentColorsStackConstraints = [
                contentColorsStack.topAnchor.constraint(equalTo: contentColorsView.topAnchor),
                contentColorsStack.leadingAnchor.constraint(equalTo: contentColorsView.leadingAnchor, constant: 18),
                contentColorsStack.trailingAnchor.constraint(equalTo: contentColorsView.trailingAnchor, constant: -18),
                contentColorsStack.bottomAnchor.constraint(equalTo: contentColorsView.bottomAnchor)
            ]

            let extraConstraints = [
                headerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.05),
                redView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.10),
                contentColorsView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.50)
            ]

            NSLayoutConstraint.activate(
                scrolViewConstraints,
                mainStackConstraints,
                contentColorsStackConstraints,
                extraConstraints
            )
        }

        func configureViews() {
            backgroundColor = .white
            redView.backgroundColor = .red
            grayView.backgroundColor = .gray
            yellowView.backgroundColor = .yellow
            greenView.backgroundColor = .green
            blueView.backgroundColor = .blue
            headerView.title = "Next example"
        }
    }
}
