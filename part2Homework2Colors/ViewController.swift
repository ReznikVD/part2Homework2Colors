//
//  ViewController.swift
//  part2Homework2Colors
//
//  Created by user207855 on 12/15/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var blueLabelValue: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: color view
        colorView.layer.cornerRadius = 10
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redSlider.tag = 0
        greenSlider.tag = 1
        blueSlider.tag = 2
        
        makeColor()
        setValues(to: redLabelValue, greenLabelValue, blueLabelValue)
    }
    
    
    @IBAction func rgbAction(_ sender: UISlider) {
        makeColor()
        
        switch sender.tag {
        case 0: redLabelValue.text = String(Int(sender.value))
        case 1: greenLabelValue.text = String(Int(sender.value))
        case 2: blueLabelValue.text = String(Int(sender.value))
        default: break
        }
    }
    
    private func makeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255,                                      green: CGFloat(greenSlider.value) / 255,
                                            blue: CGFloat(blueSlider.value) / 255,
                                            alpha: 1)
    }
    
    private func setValues(to labels: UILabel...) {
        labels.forEach { label in
            switch label.tag {
            case 0: redLabelValue.text = String(Int(redSlider.value))
            case 1: greenLabelValue.text = String(Int(greenSlider.value))
            case 2: redLabelValue.text = String(Int(blueSlider.value))
            default: break
            }
        }
    }
    
}

