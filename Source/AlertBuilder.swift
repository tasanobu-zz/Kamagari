//
//  AlertBuilder.swift
//  Kamagari
//
//  Created by Kazunobu Tasaka on 6/22/15.
//  Copyright (c) 2015 Kazunobu Tasaka. All rights reserved.
//

import UIKit

public class AlertBuilder {
    private var alertController: UIAlertController
    
    public init(title: String? = nil, message: String? = nil, preferredStyle: UIAlertControllerStyle) {
        self.alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
    }
    
    public func setTitle(title: String) -> AlertBuilder {
        alertController.title = title
        return self
    }
    
    public func setMessage(message: String) -> AlertBuilder {
        alertController.message = message
        return self
    }
    
    public func addAction(title: String = "", style: UIAlertActionStyle = .Default, handler: ((UIAlertAction!) -> Void) = { _ in }) -> AlertBuilder {
        alertController.addAction(UIAlertAction(title: title, style: style, handler: handler))
        return self
    }
    
    public func addTextFieldHandler(handler: ((UITextField!) -> Void) = { _ in }) -> AlertBuilder {
        alertController.addTextFieldWithConfigurationHandler(handler)
        return self
    }
    
    public func build() -> UIAlertController {
        return alertController
    }
}
