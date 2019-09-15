//
//  ResultExtension.swift
//  ArchaiqueUtils
//
//  Created by shiuchi on 2019/09/15.
//  Copyright © 2019 shiuchi. All rights reserved.
//

public extension Result {
    var isSuccess: Bool {
        switch self {
        case .success(_):
            return true
        case .failure(_):
            return false
        }
    }
    
    var isFailure: Bool {
        return !isSuccess
    }
}
