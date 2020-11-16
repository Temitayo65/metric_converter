//
//  customTextField.swift
//  Unit_Converter
//
//  Created by owner on 16/11/2020.
//

import UIKit
@IBDesignable
class customTextField: UITextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func prepareForInterfaceBuilder() {
        customView()
    }
    
    override func awakeFromNib() {
        customView()
    }
    
    func customView(){
        layer.cornerRadius = 30
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        textAlignment = .center
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        font = UIFont(name: "Avenir", size: 30)
        clipsToBounds = true
        
    }
    
    

}
