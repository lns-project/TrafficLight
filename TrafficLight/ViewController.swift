//
//  ViewController.swift
//  TrafficLight
//
//  Created by Динара Шарафутдинова on 04.01.2023.
//

import UIKit

// MARK: Constants

struct Constants {
    static let cornerRadius: CGFloat = 10
    static let disabledAlpha = 0.3
    static let enabledAlpha = 1.0
    static let nextLabelButton = "NEXT"
    static let startLabelButton = "START"
}

// MARK: ViewController

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet var actionButton: UIButton!
    @IBOutlet var redLightCircle: UIView!
    @IBOutlet var yellowLightCircle: UIView!
    @IBOutlet var greenLightCircle: UIView!

    // MARK: Private properties
    
    private var counter = 0
    
    // MARK: viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        disableLights()
    }
    
    // MARK: Methods
    
    @IBAction func changeColorTap(_ sender: Any) {
        actionButton.setTitle(Constants.nextLabelButton, for: .normal)
        disableLights()
        
        switch counter % 3 {
        case 0: redLightCircle.alpha = Constants.enabledAlpha
        case 1: yellowLightCircle.alpha = Constants.enabledAlpha
        case 2: greenLightCircle.alpha = Constants.enabledAlpha
        default:
            break
        }
        counter = counter + 1
    }
    
    // MARK: Private methods
    
    private func setupUI() {
        actionButton.setTitle(Constants.startLabelButton, for: .normal)
        actionButton.layer.cornerRadius = Constants.cornerRadius
        redLightCircle.layer.cornerRadius = redLightCircle.frame.width/2
        yellowLightCircle.layer.cornerRadius = yellowLightCircle.frame.width/2
        greenLightCircle.layer.cornerRadius = greenLightCircle.frame.width/2
    }
    
    private func disableLights() {
        redLightCircle.alpha = Constants.disabledAlpha
        yellowLightCircle.alpha = Constants.disabledAlpha
        greenLightCircle.alpha = Constants.disabledAlpha
    }
}
