//
//  ViewController.swift
//  homeWork2
//
//  Created by Sasha on 27.08.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redCircle: UIView!
    @IBOutlet weak var yellowCircle: UIView!
    @IBOutlet weak var greenCircle: UIView!
    
    @IBOutlet weak var firstButton: UIButton!
    
    var currentColor: TrafficLightState = .red
    
    
    enum TrafficLightState {
        case red, yellow, green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redCircle.layer.cornerRadius = 50
        yellowCircle.layer.cornerRadius = 50
        greenCircle.layer.cornerRadius = 50
        
        firstButton.layer.cornerRadius = 10
        
        setupLights()
    }
    
    func setupLights() {
        redCircle.backgroundColor = .red
        yellowCircle.backgroundColor = .yellow
        greenCircle.backgroundColor = .green
        
        // Скрываем все огни, кроме красного
        redCircle.alpha = 0.5
        yellowCircle.alpha = 0.5
        greenCircle.alpha = 0.5
    }
    
    
    @IBAction func switchColor(_ sender: UIButton) {
        switch currentColor {
            case .red:
                redCircle.alpha = 1.0
                yellowCircle.alpha = 0.5
                greenCircle.alpha = 0.5
                currentColor = .yellow
                firstButton.setTitle("Next", for: .normal)
            case .yellow:
                yellowCircle.alpha = 1.0
                greenCircle.alpha = 0.5
                redCircle.alpha = 0.5
                currentColor = .green
                firstButton.setTitle("Next", for: .normal)
            case .green:
                greenCircle.alpha = 1.0
                redCircle.alpha = 0.5
                yellowCircle.alpha = 0.5
                currentColor = .red
                firstButton.setTitle("Next", for: .normal)
        }
    }
    
}
