//
//  ArrayExtension.swift
//  ArchaiqueUtils
//
//  Created by shiuchi on 2016/09/16.
//  Copyright © 2016年 shiuchi. All rights reserved.
//

public extension Array {
    
    /// A Boolean value indicating whether the collection is not empty.
    var isNotEmpty: Bool {
        return !self.isEmpty
    }
}

public extension Array {
    
    /// If the specified index is within the range of the array element will be returned, otherwise return nil.
    ///
    /// - Parameter index: Int
    subscript(safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
    
    /// 指定されたindexから指定された数の要素を抜き出した配列を新たに生成して返却します
    ///
    /// - Parameters:
    ///   - begin: Int start index
    ///   - num: Int count of elements
    /// - Returns: [Element] new Array
    func take(_ begin: Int, _ num: Int) -> [Element] {
        let sBegin = Swift.min(Swift.max(0, begin), Swift.max(count, 0))
        let sEnd = sBegin + Swift.min(Swift.max(0, num), count - sBegin)
        return Array(self[sBegin..<sEnd])
    }
}
