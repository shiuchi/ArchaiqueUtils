//
//  StringExtensionTest.swift
//  ArchaiqueUtilsTests
//
//  Created by shiuchi on 2019/05/23.
//  Copyright © 2019 shiuchi. All rights reserved.
//

import XCTest

class StringExtensionTest: XCTestCase {

    func testToURL() {
        XCTAssertNil("".url)
        XCTAssertNotNil("https://github.com/".url)
    }

}
