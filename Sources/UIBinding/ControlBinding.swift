//
//  ControlBinding.swift
//  
//
//  Created by ebpearls on 02/01/2023.
//

import UIKit
import Combine

protocol Binding {
    associatedtype ValueType
    var value: ValueType { get set }
}

@available(iOS 13.0, *)
public class UIControlBinding<T: UIControl,V>: Publisher, Binding {
    public func receive<S>(subscriber: S) where S : Subscriber, Never == S.Failure, V == S.Input {
        binder.publisher.receive(subscriber: subscriber)
    }
    
    public typealias Output = V
    
    public typealias Failure = Never
    
    typealias ValueType = V
    
    var value: V {
        get {
            binder.publisher.value
        }
        set {
            binder.publisher.value = newValue
            binder.control.updateWith(newValue)
        }
    }
    
    var binder: ControlBinder<T,V>!
    
    func bind(_ controlBinder: ControlBinder<T,V>) {
        binder = controlBinder
    }
    
}
