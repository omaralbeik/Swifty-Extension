//
//  UIGestureRecognizerExtensionsTests.swift
//  SwifterSwift
//
//  Created by Morgan Dock on 4/21/18.
//  Copyright © 2018 SwifterSwift
//

#if os(iOS)
import XCTest
@testable import SwifterSwift

class UIGestureRecognizerExtensionsTests: XCTestCase {

    func testExample() {
        let view: UIImageView = UIImageView()
        let tap = UITapGestureRecognizer()

        //First Baseline Assertion
        XCTAssert(view.gestureRecognizers == nil)
        XCTAssert(tap.view == nil)

        view.addGestureRecognizer(tap)

        //Verify change
        XCTAssertFalse(view.gestureRecognizers == nil)
        XCTAssertFalse(tap.view == nil)

        //Second Baseline Assertion
        XCTAssertFalse((view.gestureRecognizers?.count ?? 0) == 0)
        XCTAssertFalse(view.gestureRecognizers?.isEmpty ?? true)

        tap.remove()

        //Verify change
        XCTAssert((view.gestureRecognizers?.count ?? 1) == 0)
        XCTAssert(view.gestureRecognizers?.isEmpty ?? false)
        XCTAssert(tap.view == nil)
    }
}
#endif
