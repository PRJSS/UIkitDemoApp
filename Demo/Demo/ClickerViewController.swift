//
//  ClickerViewController.swift
//  Demo
//
//  Created by Бернат Данила on 21.03.2022.
//

import Foundation
import UIKit

class ClickerViewController: UIViewController {
    
    var clickCounter = 0
    
    let clickerButton: UIButton = {
        let button = UIButton()
        button.setTitle("TAP HERE", for: .normal)
        button.backgroundColor = .systemBackground
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.systemFill.cgColor
        button.setTitleColor(UIColor.systemFill, for: .normal)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupSubviews()
        clickerButton.addTarget(self, action: #selector(didTapClicker), for: .touchDown)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    private func setupSubviews() {
        view.addSubview(clickerButton)
        
        /// Constraints
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            clickerButton.topAnchor.constraint(equalTo: margins.topAnchor, constant: 30),
            clickerButton.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
            clickerButton.widthAnchor.constraint(equalTo: margins.widthAnchor, constant: -10),
            clickerButton.heightAnchor.constraint(equalTo: margins.heightAnchor, constant: -100)
        ])
    }
    
    @objc func didTapClicker() {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
        self.clickCounter += 1
        self.clickerButton.setTitle(String(self.clickCounter), for: .normal)
        osuCircleGenerator()
        
    }
    
    private func osuCircleGenerator() {
        let osuButton: UIButton = {
            let button = UIButton()
            button.backgroundColor = .gray
            button.translatesAutoresizingMaskIntoConstraints = false
            button.layer.cornerRadius = 45
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.white.cgColor
            return button
        }()
        self.view.addSubview(osuButton)
        osuButton.frame = CGRect(x: 200, y: 200, width: 100, height: 100)

    }
}
