//
//  customMetricsLabel.swift
//  Unit_Converter
//
//  Created by owner on 16/11/2020.
//

import UIKit
@IBDesignable
class customMetricsLabel: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func prepareForInterfaceBuilder() {
        customMetricsLabelView()
    }
    
    override func awakeFromNib() {
        customMetricsLabelView()
    }
    
    func customMetricsLabelView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.05495505137)
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        textAlignment = .center
        layer.cornerRadius = 15
        clipsToBounds = true
    }

}
