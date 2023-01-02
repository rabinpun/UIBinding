//
//  UISwitch.swift
//  
//
//  Created by ebpearls on 02/01/2023.
//

import UIKit

public extension UISwitch {
    
    @available(iOS 13.0, *)
    func binder() -> ControlBinder<UISwitch,Bool> {
        ControlBinder(control: self, event: .touchUpInside,mapper: { $0.isOn })
    }
    
}
