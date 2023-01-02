//
//  UITextField.swift
//  
//
//  Created by ebpearls on 02/01/2023.
//

import UIKit

public extension UITextField {
    
    @available(iOS 13.0, *)
    func binder() -> ControlBinder<UITextField,String> {
        ControlBinder(control: self, event: .editingChanged,mapper: { $0.text ?? "" })
    }
    
}
