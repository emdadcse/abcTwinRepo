//
//  CustomButton.swift
//  ABCTween
//
//  Created by emdad hossain on 1/11/19.
//  Copyright © 2019 AppsTween. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    func setupButton() {
        //setShadow()
        setTitleColor(MyNewColor.yellowBGText, for: .normal)
        
        
        //backgroundColor      = Colors.coolBlue
       backgroundColor = MyNewColor.yellowBG
        titleLabel?.font     = UIFont(name: "HelveticaNeue-Bold", size: 50)
        //titleLabel?.textColor = UIColor.red
        layer.cornerRadius   = 10
        layer.borderWidth    = 2.0
        layer.borderColor    = MyNewColor.yellowBGBorder.cgColor
    }
    
    
    private func setShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius  = 8
        layer.shadowOpacity = 0.5
        clipsToBounds       = true
        layer.masksToBounds = false
    }
    
    
    func shake() {
        let shake           = CABasicAnimation(keyPath: "position")
        shake.duration      = 0.1
        shake.repeatCount   = 2
        shake.autoreverses  = true
        
        let fromPoint       = CGPoint(x: center.x - 8, y: center.y)
        let fromValue       = NSValue(cgPoint: fromPoint)
        
        let toPoint         = CGPoint(x: center.x + 8, y: center.y)
        let toValue         = NSValue(cgPoint: toPoint)
        
        shake.fromValue     = fromValue
        shake.toValue       = toValue
        
        layer.add(shake, forKey: "position")
    }
    
}

