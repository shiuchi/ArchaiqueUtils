//
//  UIApplicationExtension.swift
//  ArchaiqueUtils
//
//  Created by shiuchi on 2019/05/23.
//  Copyright © 2019 shiuchi. All rights reserved.
//

public extension UIApplication {
    
    /// return the Frontmost UIViewController or nil
    var topViewController: UIViewController? {
        guard var topViewController = UIApplication.shared.keyWindow?.rootViewController else {
            return nil
        }
        
        while let presentedViewController = topViewController.presentedViewController {
            topViewController = presentedViewController
        }
        return topViewController
    }
    
    /// return the Frontmost UINavigationController or nil
    var topNavigationController: UINavigationController? {
        return topViewController as? UINavigationController
    }
}
