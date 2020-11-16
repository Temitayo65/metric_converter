//
//  ViewController.swift
//  Unit_Converter
//
//  Created by owner on 14/11/2020.
//

import UIKit

class MainVC: UIViewController {
    
    var firstToggle: Bool = false
    var secondToggle: Bool = false

    @IBOutlet weak var milesMetricLabel: customMetricsLabel!
    @IBOutlet weak var kilometerMetricsLabel: customMetricsLabel!
    @IBOutlet weak var milesToKilometersResult: customLabel!
    
    
    @IBOutlet weak var lbsMetricLabel: customMetricsLabel!
    @IBOutlet weak var kgMetricsLabel: customMetricsLabel!
    @IBOutlet weak var lbsToKgResult: customLabel!
    
    @IBOutlet weak var miTOKmTextField: customTextField!
    @IBOutlet weak var lbsToKgTextField: customTextField!
    
    
    @IBAction func miToKmWhenPressed(_ sender: Any) {
        if firstToggle == false {
            milesMetricLabel.text = "Km"
            kilometerMetricsLabel.text = "Mi"
            firstToggle = true
            if let text = miTOKmTextField.text{
                if let kilometers = Double(text){
                    let result = Converter.getMilesGivenKilometer(forKilometers: kilometers)
                    milesToKilometersResult.text = "\(round(result * 1000)/1000) Mi"
                }
            }
        }
        else{
            milesMetricLabel.text = "Mi"
            kilometerMetricsLabel.text = "Km"
            firstToggle = false
            
            if let text = miTOKmTextField.text{
                if let miles = Double(text){
                    let result = Converter.getKilometersGivenMiles(forMiles: miles)
                    milesToKilometersResult.text = "\(round(result * 1000)/1000) Km"
                }
            }
        }
    
    }
    @IBAction func lbsToKgWhenPressed(_ sender: Any) {
        if secondToggle == false {
            secondToggle = true
            kgMetricsLabel.text = "Lbs"
            lbsMetricLabel.text = "Kg"
            if let text = lbsToKgTextField.text{
                if let kg = Double(text){
                    let result = Converter.getLbsGivenKg(forKg: kg)
                    lbsToKgResult.text = "\(round(result * 1000)/1000) Lbs"
                }
            }
            
        }
        else{
            secondToggle = false
            kgMetricsLabel.text = "Kg"
            lbsMetricLabel.text = "Lbs"
            if let text = lbsToKgTextField.text{
                if let lbs = Double(text){
                    let result = Converter.getKgGivenLbs(forLbs: lbs)
                    lbsToKgResult.text = "\(round(result * 1000)/1000) Kg"
                }
            }
            
        }
        
    }
    
    @IBAction func clearConverterWhenPressed(_ sender: Any) {
        lbsToKgResult.text = ""
        milesToKilometersResult.text = ""
        miTOKmTextField.text = ""
        lbsToKgTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
    }
    
    


}

