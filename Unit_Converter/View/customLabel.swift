//
//  customLabel.swift
//  Unit_Converter
//
//  Created by owner on 16/11/2020.
//

import UIKit
@IBDesignable
class customLabel: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func prepareForInterfaceBuilder() {
        customLabelView()
        
    }
    override func awakeFromNib() {
        customLabelView()
    }
    
    func customLabelView(){
        layer.cornerRadius = 20
        text = "toggle for result"
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textAlignment = .center
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.1)
        clipsToBounds = true
        font = UIFont(name: "Avenir", size: 35)
        
    }
    
   
}
