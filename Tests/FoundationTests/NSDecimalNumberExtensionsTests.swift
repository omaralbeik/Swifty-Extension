// NSDecimalNumberExtensionsTests.swift - Copyright 2020 SwifterSwift

@testable import SwifterSwift
import XCTest

#if canImport(Foundation)
import Foundation

final class NSDecimalNumberExtensionsTests: XCTestCase {
    func testEqualityOperator() {
        let test1 = NSDecimalNumber(mantissa: 2, exponent: 3, isNegative: true)
        let test2 = NSDecimalNumber(mantissa: 2, exponent: 3, isNegative: true)
        let test3 = NSDecimalNumber(mantissa: 2, exponent: 3, isNegative: false)
        XCTAssertTrue(test1 == test2)
        XCTAssertFalse(test1 == test3)
        XCTAssertFalse(test2 == test3)
    }
    
    func testLessThanOperator() {
        let test1 = NSDecimalNumber(mantissa: 2, exponent: 3, isNegative: true)
        let test2 = NSDecimalNumber(mantissa: 2, exponent: 4, isNegative: true)
        let test3 = NSDecimalNumber(mantissa: 2, exponent: 3, isNegative: false)
        let test4 = NSDecimalNumber(mantissa: 2, exponent: 4, isNegative: false)
        XCTAssertTrue(test2 < test1)
        XCTAssertTrue(test3 < test4)
        XCTAssertTrue(test1 < test3)
    }
    
    func testNegationOperator() {
        let test1 = NSDecimalNumber(mantissa: 2, exponent: 3, isNegative: true)
        let test2 = NSDecimalNumber(mantissa: 2, exponent: 3, isNegative: false)
        XCTAssertEqual(-test1, test2)
    }
    
    func testAdditionOperator() {
        let test1 = NSDecimalNumber(mantissa: 2, exponent: 3, isNegative: true)
        let test2 = NSDecimalNumber(mantissa: 3, exponent: 3, isNegative: true)
        let test3 = NSDecimalNumber(mantissa: 5, exponent: 3, isNegative: true)
        XCTAssertEqual(test1 + test2, test3)
    }
    
    func testSubtractionOperator() {
        let test1 = NSDecimalNumber(mantissa: 2, exponent: 3, isNegative: true)
        let test2 = NSDecimalNumber(mantissa: 3, exponent: 3, isNegative: true)
        let test3 = NSDecimalNumber(mantissa: 5, exponent: 3, isNegative: true)
        XCTAssertEqual(test3 - test2, test1)
    }
    
    func testMultiplicationOperator() {
        let test1 = NSDecimalNumber(mantissa: 2, exponent: 3, isNegative: true)
        let test2 = NSDecimalNumber(mantissa: 2, exponent: 2, isNegative: true)
        let test3 = NSDecimalNumber(mantissa: 4, exponent: 5, isNegative: true)
        XCTAssertEqual(test1 * test2, test3)
    }
    
    func testDivisionOperator() {
        let test1 = NSDecimalNumber(mantissa: 2, exponent: 3, isNegative: true)
        let test2 = NSDecimalNumber(mantissa: 2, exponent: 2, isNegative: true)
        let test3 = NSDecimalNumber(mantissa: 2, exponent: 5, isNegative: true)
        XCTAssertEqual(test3 / test2, test1)
    }
    
    func testPowerOperator() {
        let test1 = NSDecimalNumber(mantissa: 2, exponent: 3, isNegative: true)
        let test2 = NSDecimalNumber(mantissa: 2, exponent: 2, isNegative: true)
        let test3 = NSDecimalNumber(mantissa: 2, exponent: 12, isNegative: true)
        XCTAssertEqual(test3 ^ test2, test1)
    }
}

#endif
