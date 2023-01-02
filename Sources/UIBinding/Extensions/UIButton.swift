//
//  UIButton.swift
//  
//
//  Created by ebpearls on 02/01/2023.
//

import UIKit

public extension UIButton {
    
    @available(iOS 13.0, *)
    func binder() -> ControlBinder<UIButton,Bool> {
        ControlBinder(control: self, event: .touchUpInside,mapper: { $0.isSelected })
    }
    
}
