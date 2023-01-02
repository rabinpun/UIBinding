//
//  UIControl.swift
//  
//
//  Created by ebpearls on 02/01/2023.
//

import UIKit

extension UIControl {
    
    func updateWith<T>(_ value: T) {
        if let value = value as? Bool {
            (self as? UIButton)?.isSelected = value
            (self as? UISwitch)?.isOn = value
        } else if let value = value as? String {
            (self as? UITextField)?.text = value
        }
    }
    
}
