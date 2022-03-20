//
//  ViewController.swift
//  Demo
//
//  Created by Бернат Данила on 20.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("КНОПОЧКА", for: .normal)
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.tag = 1
        
        return button
    }()
    
    private let transitButton: UIButton = {
        let button = UIButton()
        button.setTitle("кликер ->", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let someLabel : UILabel = {
        let label = UILabel()
        label.text = "Нажми на кнопочку"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        button.addTarget(self, action: #selector(buttonActionDown), for: .touchDown)
        button.addTarget(self, action: #selector(buttonActionUpOutside), for: .touchUpOutside)
        button.addTarget(self, action: #selector(buttonActionUpInside), for: .touchUpInside)
        
        
    }
    
    private func setupSubviews() {
        view.addSubview(someLabel)
        view.addSubview(button)
        //view.addSubview(transitButton)
        
        /// Constraints
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            someLabel.topAnchor.constraint(equalTo: margins.topAnchor, constant: 100),
            someLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            someLabel.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            someLabel.widthAnchor.constraint(equalTo: margins.widthAnchor),
            button.topAnchor.constraint(equalTo: someLabel.bottomAnchor, constant: 15),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalTo: margins.widthAnchor, constant: -50),
            button.heightAnchor.constraint(equalTo: margins.heightAnchor, constant: -400),
//            transitButton.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -30),
//            transitButton.centerXAnchor.constraint(equalTo: margins.centerXAnchor)
        ])
    }
    
    @objc func buttonActionDown() {
        UIView.animate(withDuration: 0.1, delay: 0, animations:{
            self.button.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            self.button.backgroundColor = .blue
            let generator = UIImpactFeedbackGenerator(style: .medium)
            generator.impactOccurred()
        })
        
    }
    
    @objc func buttonActionUpOutside() {
        UIView.animate(withDuration: 0.1, delay: 0, animations:{
            self.button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            self.button.backgroundColor = .red
            let generator = UIImpactFeedbackGenerator(style: .light)
            generator.impactOccurred()
        })
    }
    
    @objc func buttonActionUpInside() {
        UIView.animate(withDuration: 0.1, delay: 0, animations:{
            self.button.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            self.button.backgroundColor = .red
            let generator = UIImpactFeedbackGenerator(style: .light)
            generator.impactOccurred()
        })
    }
    
}




