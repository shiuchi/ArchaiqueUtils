//
//  ClassNameOutputtable.swift
//  ArchaiqueUtils
//
//  Created by shiuchi on 2019/05/23.
//  Copyright © 2019 shiuchi. All rights reserved.
//

public protocol ClassNameOutputtable {
}

public extension ClassNameOutputtable {
    static var className: String {
        return String(describing: self)
    }
    
    var className: String {
        return type(of: self).className
    }
}

