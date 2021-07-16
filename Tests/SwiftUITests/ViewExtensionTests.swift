//
//  EraseToAnyViewTests.swift
//  SwifterSwift
//
//  Created by Jevon Mao on 6/18/21.
//  Copyright © 2021 SwifterSwift. All rights reserved.
//

@testable import SwifterSwift
import XCTest
import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
class ViewExtensionTests: XCTestCase {
    func testEraseToAnyView() {
        #if !os(macOS)
        let typeErasedView = UIHostingController(rootView: TestView().eraseToAnyView())
        let anyView = UIHostingController(rootView: AnyView(TestView()))
        XCTAssertEqual(typeErasedView.view.screenshot, anyView.view.screenshot)
        #endif
    }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
struct TestView: View {
    var body: some View {
        Text("SwifterSwift")
    }
}
