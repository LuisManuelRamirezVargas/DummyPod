//
//  DummyPodTests.swift
//  DummyPodTests
//
//  Created by Ramirez, Luis Manuel on 09/03/21.
//

import XCTest
@testable import DummyPod

class DummyPodTests: XCTestCase {
    var dummyClass: DummyClass!

    override func setUpWithError() throws {
        dummyClass = DummyClass()
    }

    override func tearDownWithError() throws {
        dummyClass = nil
    }

    func testGetAvailableDiskSpace() throws {
        let result = try? dummyClass.getAvailableDiskSpace().get()
        XCTAssertNotNil(result)
    }

}
