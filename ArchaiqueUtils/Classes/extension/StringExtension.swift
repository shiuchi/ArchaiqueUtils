//
//  StringExtension.swift
//  ArchaiqueUtils
//
//  Created by shiuchi on 2019/05/23.
//  Copyright © 2019 shiuchi. All rights reserved.
//

public extension String {
    
    var url: URL? {
        return URL(string: self)
    }
    
    func localize(comment: String = "", _ args: CVarArg...) -> String {
        let format = NSLocalizedString(self, comment: comment)
        return String(format: format, locale: Locale.current, arguments: args)
    }
    
    var isNotEmpty: Bool {
        return !isEmpty
    }
}
