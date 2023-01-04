//
//  ViewController.swift
//  TrafficLight
//
//  Created by Динара Шарафутдинова on 04.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var actionButton: UIButton!
    
    @IBOutlet var redLightCircle: UIView!
    @IBOutlet var yellowLightCircle: UIView!
    @IBOutlet var greenLightCircle: UIView!
    
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButton.layer.cornerRadius = 10
        
        redLightCircle.alpha = 0.3
        yellowLightCircle.alpha = 0.3
        greenLightCircle.alpha = 0.3
        
        redLightCircle.layer.cornerRadius = 75
        yellowLightCircle.layer.cornerRadius = 75
        greenLightCircle.layer.cornerRadius = 75
    }
    

    @IBAction func changeColorTap(_ sender: Any) {
        actionButton.setTitle("NEXT", for: .normal)
        
        redLightCircle.alpha = 0.3
        yellowLightCircle.alpha = 0.3
        greenLightCircle.alpha = 0.3
        
        switch counter % 3 {
        case 0: redLightCircle.alpha = 1.0
        case 1: yellowLightCircle.alpha = 1.0
        case 2: greenLightCircle.alpha = 1.0
        default:
            break
        }
        counter = counter + 1

        
    }
}

