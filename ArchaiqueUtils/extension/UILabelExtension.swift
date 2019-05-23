//
//  UILabelExtension.swift
//  ArchaiqueUtils
//
//  Created by shiuchi on 2019/05/23.
//  Copyright © 2019 shiuchi. All rights reserved.
//

public extension UILabel {
    
    /// Return the size using the specified font and String and width.
    ///
    /// - Parameters:
    ///   - text: useing text
    ///   - font: UIFont
    ///   - width: CGFloat
    /// - Returns: CGSize
    func fitSize (_ text: String, font: UIFont, width: CGFloat) -> CGSize {
        self.text = text
        self.font = font
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
        return sizeThatFits(CGSize(width: width, height: CGFloat.greatestFiniteMagnitude))
    }
}
