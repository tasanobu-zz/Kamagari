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
    
    public func setTitle(title: String) -> Self {
        alertController.title = title
        return self
    }
    
    public func setMessage(message: String) -> Self {
        alertController.message = message
        return self
    }
    
    public func setPopoverPresentationProperties(sourceView sourceView: UIView? = nil, sourceRect:CGRect? = nil, barButtonItem: UIBarButtonItem? = nil, permittedArrowDirections: UIPopoverArrowDirection? = nil) -> Self {
        
        if let poc = alertController.popoverPresentationController {
            if let view = sourceView {
                poc.sourceView = view
            }
            if let rect = sourceRect {
                poc.sourceRect = rect
            }
            if let item = barButtonItem {
                poc.barButtonItem = item
            }
            if let directions = permittedArrowDirections {
                poc.permittedArrowDirections = directions
            }
        }
        
        return self
    }
    
    public func addAction(title title: String = "", style: UIAlertActionStyle = .Default, handler: ((UIAlertAction!) -> Void) = { _ in }) -> Self {
        alertController.addAction(UIAlertAction(title: title, style: style, handler: handler))
        return self
    }
    
    public func addTextFieldHandler(handler: ((UITextField!) -> Void) = { _ in }) -> Self {
        alertController.addTextFieldWithConfigurationHandler(handler)
        return self
    }
    
    public func build() -> UIAlertController {
        return alertController
    }
}
