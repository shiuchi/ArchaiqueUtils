//
//  ArrayExtensionTest.swift
//  ArchaiqueUtilsTests
//
//  Created by shiuchi on 2019/05/23.
//  Copyright © 2019 shiuchi. All rights reserved.
//

import XCTest
@testable import ArchaiqueUtils

class ArrayExtensionTest: XCTestCase {
    
    func testIsNotEmpty() {
        var arr:[String] = []
        XCTAssertFalse(arr.isNotEmpty)
        arr.insert("a", at: 0)
        XCTAssertTrue(arr.isNotEmpty)
    }
    
    func testSafe() {
        let arr = ["a", "b", "c"]
        let first = arr[safe: 0]
        XCTAssertTrue(first == "a")
        XCTAssertNil(arr[safe: 3])
    }

}
