//
//  UIColorExtension.swift
//  ArchaiqueUtils
//
//  Created by shiuchi on 2016/09/16.
//  Copyright © 2016年 shiuchi. All rights reserved.
//

public extension UIColor {
    
    ///  rgba指定でUIColorを生成するためのイニシャライザ
    ///
    ///  - parameter rgba: rgbaを文字列で指定 (ex: #000000)
    ///
    ///  - returns: UIColor instance
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0xFF00) >> 8) / 255.0
        let blue = CGFloat((hex & 0xFF)) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    convenience init?(hexString: String, alpha: CGFloat = 1.0) {
        var code = hexString
        if let range = code.range(of: "#") {
            code.removeSubrange(range)
        }
        let scanner = Scanner(string: code)
        var hex: UInt64 = 0
        if scanner.scanHexInt64(&hex) {
            self.init(hex: Int(hex), alpha: alpha)
        } else {
            return nil
        }
    }
    
    func getImage() -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        guard let context = UIGraphicsGetCurrentContext() else { assertionFailure(); return UIImage() }
        context.setFillColor(self.cgColor)
        context.fill(rect)
        guard let image: UIImage = UIGraphicsGetImageFromCurrentImageContext() else { assertionFailure(); return UIImage() }
        UIGraphicsEndImageContext()
        return image
    }
}
