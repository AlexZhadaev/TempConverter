//
//  ViewController.swift
//  TempConverter
//
//  Created by Жадаев Алексей on 02.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusDegreeLabel: UILabel!
    @IBOutlet weak var fahrenheitDegreeLabel: UILabel!
    @IBOutlet weak var temperature: UISlider! {
        didSet {
            temperature.maximumValue = 100
            temperature.minimumValue = -100
            temperature.value = 0
        }
    }
    
    
    
    @IBAction func temperatureChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusDegreeLabel.text = "\(temperatureCelsius)ºC"
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitDegreeLabel.text = "\(temperatureFahrenheit)ºF"
    }
    
}

