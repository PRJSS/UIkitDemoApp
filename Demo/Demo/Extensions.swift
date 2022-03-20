//
//  Extensions.swift
//  Demo
//
//  Created by Бернат Данила on 20.03.2022.
//

import UIKit
import Foundation

extension UIButton {
    
    func pulsate(repeateCount: Float = 1.0, duration: Double = 0.6) {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = duration
        pulse.fromValue = 1.0
        pulse.toValue = 0.95
        //pulse.autoreverses = true
        pulse.repeatCount = repeateCount
        pulse.initialVelocity = 200.0
        pulse.damping = 0.5
        layer.add(pulse, forKey: "pulse")
    }
}
