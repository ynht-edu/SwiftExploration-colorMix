//
//  ViewController.swift
//  colorMix
//
//  Created by Yayat Nurhidayat on 17/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func colorSwitch(_ sender: UISwitch) {
        updateColor()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func reset(_ sender: Any) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        
        updateColor()
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        var redAlpha = CGFloat(redSlider.value)
        var greenAlpha = CGFloat(greenSlider.value)
        var blueAlpha = CGFloat(blueSlider.value)
        
        if redSwitch.isOn {
            redSlider.minimumTrackTintColor = UIColor(red: 1, green: 0, blue: 0, alpha: redAlpha)
            red = CGFloat(redSlider.value)
        } else if !redSwitch.isOn{
            redSlider.minimumTrackTintColor = .gray
        }
        if greenSwitch.isOn {
            greenSlider.minimumTrackTintColor = UIColor(red: 0, green: 1, blue: 0, alpha: greenAlpha)
            green = CGFloat(greenSlider.value)
        } else if !greenSwitch.isOn {
            greenSlider.minimumTrackTintColor = .gray
        }
        if blueSwitch.isOn {
            blueSlider.minimumTrackTintColor = UIColor(red: 0, green: 0, blue: 1, alpha: blueAlpha)
            blue = CGFloat(blueSlider.value)
        } else if !blueSwitch.isOn {
            blueSlider.minimumTrackTintColor = .gray
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        colorView.backgroundColor = color
    }
    
    
    
}

