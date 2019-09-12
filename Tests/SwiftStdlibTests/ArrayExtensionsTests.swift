//
//  ArrayExtensionsTests.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 8/26/16.
//  Copyright © 2016 SwifterSwift
//
import XCTest
@testable import SwifterSwift

private struct Person: Equatable, Hashable {
    var name: String
    var age: Int?
}

final class ArrayExtensionsTests: XCTestCase {

    func testPrepend() {
        var arr = [2, 3, 4, 5]
        arr.prepend(1)
        XCTAssertEqual(arr, [1, 2, 3, 4, 5])
    }

    func testSafeSwap() {
        var array: [Int] = [1, 2, 3, 4, 5]
        array.safeSwap(from: 3, to: 0)
        XCTAssertEqual(array[3], 1)
        XCTAssertEqual(array[0], 4)

        var newArray = array
        newArray.safeSwap(from: 1, to: 1)
        XCTAssertEqual(newArray, array)

        newArray = array
        newArray.safeSwap(from: 1, to: 12)
        XCTAssertEqual(newArray, array)

        let emptyArray: [Int] = []
        var swappedEmptyArray = emptyArray
        swappedEmptyArray.safeSwap(from: 1, to: 3)
        XCTAssertEqual(swappedEmptyArray, emptyArray)
    }

    func testKeyPathSorted() {
        let array = [Person(name: "James", age: 32), Person(name: "Wade", age: 36), Person(name: "Rose", age: 29)]

        XCTAssertEqual(array.sorted(by: \Person.name), [Person(name: "James", age: 32), Person(name: "Rose", age: 29), Person(name: "Wade", age: 36)])
        XCTAssertEqual(array.sorted(by: \Person.name, ascending: false), [Person(name: "Wade", age: 36), Person(name: "Rose", age: 29), Person(name: "James", age: 32)])
        // Testing Optional keyPath
        XCTAssertEqual(array.sorted(by: \Person.age), [Person(name: "Rose", age: 29), Person(name: "James", age: 32), Person(name: "Wade", age: 36)])
        XCTAssertEqual(array.sorted(by: \Person.age, ascending: false), [Person(name: "Wade", age: 36), Person(name: "James", age: 32), Person(name: "Rose", age: 29)])

        // Testing Mutating
        var mutableArray = [Person(name: "James", age: 32), Person(name: "Wade", age: 36), Person(name: "Rose", age: 29)]

        mutableArray.sort(by: \Person.name)
        XCTAssertEqual(mutableArray, [Person(name: "James", age: 32), Person(name: "Rose", age: 29), Person(name: "Wade", age: 36)])

        // Testing Mutating Optional keyPath
        mutableArray.sort(by: \Person.age)
        XCTAssertEqual(mutableArray, [Person(name: "Rose", age: 29), Person(name: "James", age: 32), Person(name: "Wade", age: 36)])

        // Testing nil path
        let nilArray = [Person(name: "James", age: nil), Person(name: "Wade", age: nil)]
        XCTAssertEqual(nilArray.sorted(by: \Person.age), [Person(name: "James", age: nil), Person(name: "Wade", age: nil)])
    }

    func testRemoveAll() {
        var arr = [0, 1, 2, 0, 3, 4, 5, 0, 0]
        arr.removeAll(0)
        XCTAssertEqual(arr, [1, 2, 3, 4, 5])
        arr = []
        arr.removeAll(0)
        XCTAssertEqual(arr, [])
    }

    func testRemoveAllItems() {
        var arr = [0, 1, 2, 2, 0, 3, 4, 5, 0, 0]
        arr.removeAll([0, 2])
        XCTAssertEqual(arr, [1, 3, 4, 5])
        arr.removeAll([])
        XCTAssertEqual(arr, [1, 3, 4, 5])
        arr = []
        arr.removeAll([])
        XCTAssertEqual(arr, [])
    }

    func testRemoveDuplicates() {
        var array = [1, 1, 2, 2, 3, 3, 3, 4, 5]
        array.removeDuplicates()
        XCTAssertEqual(array, [1, 2, 3, 4, 5])
    }

    func testWithoutDuplicates() {
        XCTAssertEqual([1, 1, 2, 2, 3, 3, 3, 4, 5].withoutDuplicates(), [1, 2, 3, 4, 5])
        XCTAssertEqual(["h", "e", "l", "l", "o"].withoutDuplicates(), ["h", "e", "l", "o"])
    }

    func testWithoutDuplicatesUsingKeyPath() {
        let array = [Person(name: "James", age: 32), Person(name: "James", age: 36), Person(name: "Rose", age: 29), Person(name: "James", age: 72), Person(name: "Rose", age: 56)]
        let setWithoutDuplicates = array.withoutDuplicatesUnordered(keyPath: \.name)
        let arrayWithoutDuplicates = array.withoutDuplicates(keyPath: \.name)
        let arrayWithoutDuplicatesPrepared = [Person(name: "James", age: 32), Person(name: "Rose", age: 29)]
        let setWithoutDuplicatesPrepared = Set(arrayWithoutDuplicatesPrepared)
        XCTAssertEqual(setWithoutDuplicates.count, setWithoutDuplicatesPrepared.count)
        XCTAssertEqual(arrayWithoutDuplicates.count, arrayWithoutDuplicatesPrepared.count)
        XCTAssertEqual(setWithoutDuplicates, setWithoutDuplicatesPrepared)
        XCTAssertTrue(zip(arrayWithoutDuplicates, arrayWithoutDuplicatesPrepared).any { $0 == $1})
    }
}
