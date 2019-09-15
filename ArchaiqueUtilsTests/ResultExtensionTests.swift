//
//  ResultExtensionTests.swift
//  ArchaiqueUtilsTests
//
//  Created by shiuchi on 2019/09/15.
//  Copyright © 2019 shiuchi. All rights reserved.
//

import XCTest
@testable import ArchaiqueUtils

class ResultExtensionTests: XCTestCase {

    func testSuccess() {
        let r: Result<Int, Error> = .success(0)
        XCTAssertTrue(r.isSuccess)
        XCTAssertFalse(r.isFailure)
    }
    
    func testFailure() {
        let r: Result<Int, Error> = .failure(NSError(domain: "isFailure", code: 0, userInfo: nil))
        XCTAssertTrue(r.isFailure)
        XCTAssertFalse(r.isSuccess)
    }

}
