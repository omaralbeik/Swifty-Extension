//
//  DataExtensionsTests.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 09/02/2017.
//  Copyright © 2017 SwifterSwift
//

import XCTest
@testable import SwifterSwift

final class DataExtensionsTests: XCTestCase {
	
	func testString() {
		let dataFromString = "hello".data(using: .utf8)
		XCTAssertNotNil(dataFromString)
		XCTAssertNotNil(dataFromString?.string(encoding: .utf8))
		XCTAssertEqual(dataFromString?.string(encoding: .utf8), "hello")
	}

    func testBinaryString() {
        let dataFromString = "1".data(using: .utf8)
        let binaryString = dataFromString?.binaryString
        XCTAssertNotNil(binaryString)
        // "1" = 0x31 in .utf8 => 00110001
        XCTAssert(binaryString == "00110001")
    }
    
    func testBytes() {
        let dataFromString = "hello".data(using: .utf8)
        let bytes = dataFromString?.bytes
        XCTAssertNotNil(bytes)
        XCTAssertEqual(bytes?.count, 5)
    }
}
