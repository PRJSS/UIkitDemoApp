//
//  ClickerViewController.swift
//  Demo
//
//  Created by Бернат Данила on 21.03.2022.
//

import Foundation
import UIKit

class ClickerViewController: UIViewController {
    
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
        UIView.animate(withDuration: 0.1, delay: 0, animations:{
            let generator = UIImpactFeedbackGenerator(style: .heavy)
            generator.impactOccurred()
        })
    }
}
