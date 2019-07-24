//
//  UIColorExtensionTest.swift
//  ArchaiqueUtilsTests
//
//  Created by shiuchi on 2019/05/23.
//  Copyright © 2019 shiuchi. All rights reserved.
//

import XCTest

class UIColorExtensionTest: XCTestCase {

    func testUiColorInit() {
        let color = UIColor(hexString: "")
        XCTAssertNil(color)
    }

}
