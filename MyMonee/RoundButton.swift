//
//  SaveButton.swift
//  MyMonee
//
//  Created by MacBook on 05/05/21.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
        self.layer.cornerRadius = cornerRadius
        }
    }
}
