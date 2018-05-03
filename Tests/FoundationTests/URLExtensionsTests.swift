//
//  URLExtensionsTests.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 03/02/2017.
//  Copyright © 2017 SwifterSwift
//

import XCTest
@testable import SwifterSwift

final class URLExtensionsTests: XCTestCase {

	var url = URL(string: "https://www.google.com")!
	let params = ["q": "swifter swift"]
	let queryUrl = URL(string: "https://www.google.com?q=swifter%20swift")!

	func testAppendingQueryParameters() {
		XCTAssertEqual(url.appendingQueryParameters(params), queryUrl)
	}

	func testAppendQueryParameters() {
		url.appendQueryParameters(params)
		XCTAssertEqual(url, queryUrl)
	}

	func testQueryParameters() {
		let url = URL(string: "https://www.google.com?q=swifter%20swift&steve=jobs&empty")!
		guard let parameters = url.queryParameters else {
			XCTAssert(false)
			return
		}

		XCTAssertEqual(parameters.count, 2)
		XCTAssertEqual(parameters["q"], "swifter swift")
		XCTAssertEqual(parameters["steve"], "jobs")
		XCTAssertEqual(parameters["empty"], nil)
	}

    func testDeletingAllPathComponents() {
        let url = URL(string: "https://domain.com/path/other/")!
        let result = url.deletingAllPathComponents()
        XCTAssertEqual(result.absoluteString, "https://domain.com/")
    }

    func testDeleteAllPathComponents() {
        var url = URL(string: "https://domain.com/path/other/")!
        url.deleteAllPathComponents()
        XCTAssertEqual(url.absoluteString, "https://domain.com/")
    }

	#if os(iOS) || os(tvOS)
	func testThumbnail() {
		XCTAssertNil(url.thumbnail())

		let videoUrl = Bundle(for: URLExtensionsTests.self).url(forResource: "big_buck_bunny_720p_1mb", withExtension: "mp4")!
		XCTAssertNotNil(videoUrl.thumbnail())
		XCTAssertNotNil(videoUrl.thumbnail(fromTime: 1))
	}
	#endif

}
