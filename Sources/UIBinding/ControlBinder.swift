//
//  ControlBinder.swift
//  
//
//  Created by ebpearls on 02/01/2023.
//

import UIKit
import Combine

@available(iOS 13.0, *)
public class ControlBinder<T: UIControl,V> {
    
    let control: T
    lazy var publisher = CurrentValueSubject<V,Never>(value)
    let mapper: ((T) -> V)
    
    var value:V {
        mapper(control)
    }
    
    init(control: T, event: UIControl.Event, mapper: @escaping ((T) -> V)) {
        self.control = control
        self.mapper = mapper
        control.addTarget(self, action: #selector(evenTrigger), for: event)
    }
    
    @objc
    private func evenTrigger() {
        publisher.send(value)
    }
    
    deinit {
        print("denit")
    }
    
}
