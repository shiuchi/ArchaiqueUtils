//
//  ClassNameOutputtableTest.swift
//  ArchaiqueUtilsTests
//
//  Created by shiuchi on 2019/05/23.
//  Copyright © 2019 shiuchi. All rights reserved.
//

import XCTest
@testable import ArchaiqueUtils

class ClassNameOutputtableTest: XCTestCase {
    
    class MockViewController: UIViewController, ClassNameOutputtable {}
    
    struct mockStruct: ClassNameOutputtable{}

    func testClassNameOutputtable() {
        let vc = MockViewController(nibName: nil, bundle: nil)
        XCTAssertEqual("MockViewController", vc.className)
        XCTAssertNotEqual("mockStruct", vc.className)
        XCTAssertEqual("MockViewController", MockViewController.className)
        XCTAssertNotEqual("mockStruct", MockViewController.className)
        
        XCTAssertEqual("mockStruct", mockStruct().className)
        XCTAssertNotEqual("MockViewController", mockStruct().className)
        XCTAssertEqual("mockStruct", mockStruct.className)
        XCTAssertNotEqual("MockViewController", mockStruct.className)
    }

}

