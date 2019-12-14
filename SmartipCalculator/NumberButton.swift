//
//  NumberButton.swift
//  SmartipCalculator
//
//  Created by Amir Mostafavi on 12/14/19.
//  Copyright © 2019 amir. All rights reserved.
//

import UIKit

@IBDesignable class NumberButton: UIButton {
        
    static let color: UIColor = UIColor(red: 24 / 255, green: 24 / 255, blue: 24 / 255, alpha: 1)
    @IBInspectable var number: Int8 = 0
    
    override func draw(_ rect: CGRect) {

        layer.cornerRadius = layer.bounds.height / 7;
        layer.masksToBounds = true;
        
        // Drawing code
        let path = UIBezierPath(rect: rect)
        NumberButton.color.setFill()
        path.fill()
        
        setTitle("\(number)", for: .normal)
    }

}
