//
//  UIAlertControllerExtension.swift
//  Kamagari
//
//  Created by Kazunobu Tasaka on 6/22/15.
//  Copyright (c) 2015 Kazunobu Tasaka. All rights reserved.
//

import UIKit

public extension UIAlertController {
    public func kam_show(animated animated: Bool = true, completionHandler: (() -> Void)? = nil) {
        guard let rootVC = UIApplication.sharedApplication().keyWindow?.rootViewController else {
            return
        }
        var forefrontVC = rootVC
        while let presentedVC = forefrontVC.presentedViewController {
            forefrontVC = presentedVC
        }
        forefrontVC.presentViewController(self, animated: animated, completion: completionHandler)
    }
}
