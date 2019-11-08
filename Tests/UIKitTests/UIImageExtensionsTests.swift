//
//  UIImageExtensionsTests.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 3/22/17.
//  Copyright © 2017 SwifterSwift
//

import XCTest
@testable import SwifterSwift

#if canImport(UIKit)
import UIKit

final class UIImageExtensionsTests: XCTestCase {

    func testBytesSize() {
        let bundle = Bundle.init(for: UIImageExtensionsTests.self)
        let image = UIImage(named: "TestImage", in: bundle, compatibleWith: nil)!
        XCTAssertEqual(image.bytesSize, 68665)
        XCTAssertEqual(UIImage().bytesSize, 0)
    }

    func testKilobytesSize() {
        let bundle = Bundle.init(for: UIImageExtensionsTests.self)
        let image = UIImage(named: "TestImage", in: bundle, compatibleWith: nil)!
        XCTAssertEqual(image.kilobytesSize, 67)
    }

    func testOriginal() {
        let image = UIImage(color: .blue, size: CGSize(width: 20, height: 20))
        XCTAssertEqual(image.original, image.withRenderingMode(.alwaysOriginal))
    }

    func testTemplate() {
        let image = UIImage(color: .blue, size: CGSize(width: 20, height: 20))
        XCTAssertEqual(image.template, image.withRenderingMode(.alwaysTemplate))
    }

    func testCompressed() {
        let bundle = Bundle.init(for: UIImageExtensionsTests.self)
        let image = UIImage(named: "TestImage", in: bundle, compatibleWith: nil)!
        let originalSize = image.kilobytesSize
        let compressedImage = image.compressed(quality: 0.2)
        XCTAssertNotNil(compressedImage)
        XCTAssertLessThan(compressedImage!.kilobytesSize, originalSize)
        XCTAssertNil(UIImage().compressed())
    }

    func testCropped() {
        let image = UIImage(color: .black, size: CGSize(width: 20, height: 20))
        var cropped = image.cropped(to: CGRect(x: 0, y: 0, width: 40, height: 40))
        XCTAssertEqual(image, cropped)
        cropped = image.cropped(to: CGRect(x: 0, y: 0, width: 10, height: 10))
        let small = UIImage(color: .black, size: CGSize(width: 10, height: 10))
        XCTAssertEqual(cropped.bytesSize, small.bytesSize)

        let equalHeight = image.cropped(to: CGRect(x: 0, y: 0, width: 18, height: 20))
        XCTAssertNotEqual(image, equalHeight)

        let equalWidth = image.cropped(to: CGRect(x: 0, y: 0, width: 20, height: 18))
        XCTAssertNotEqual(image, equalWidth)
    }

    func testScaledToHeight() {
        let bundle = Bundle.init(for: UIImageExtensionsTests.self)
        let image = UIImage(named: "TestImage", in: bundle, compatibleWith: nil)!

        let scaledImage = image.scaled(toHeight: 300)
        XCTAssertNotNil(scaledImage)
        XCTAssertEqual(scaledImage!.size.height, 300, accuracy: 0.1)
    }

    func testScaledToWidth() {
        let bundle = Bundle.init(for: UIImageExtensionsTests.self)
        let image = UIImage(named: "TestImage", in: bundle, compatibleWith: nil)!

        let scaledImage = image.scaled(toWidth: 300)
        XCTAssertNotNil(scaledImage)
        XCTAssertEqual(scaledImage!.size.width, 300, accuracy: 0.1)
    }

    @available(iOS 10.0, tvOS 10.0, watchOS 3.0, *)
    func testRotatedByMeasurement() {
        let bundle = Bundle.init(for: UIImageExtensionsTests.self)
        let image = UIImage(named: "TestImage", in: bundle, compatibleWith: nil)!

        let halfRotatedImage = image.rotated(by: Measurement(value: 90, unit: .degrees))
        XCTAssertNotNil(halfRotatedImage)
        XCTAssertEqual(halfRotatedImage!.size, CGSize(width: image.size.height, height: image.size.width))

        let rotatedImage = image.rotated(by: Measurement(value: 180, unit: .degrees))
        XCTAssertNotNil(rotatedImage)
        XCTAssertEqual(rotatedImage!.size, image.size)
        XCTAssertNotEqual(image.jpegData(compressionQuality: 1), rotatedImage!.jpegData(compressionQuality: 1))
    }

    func testRotatedByRadians() {
        let bundle = Bundle.init(for: UIImageExtensionsTests.self)
        let image = UIImage(named: "TestImage", in: bundle, compatibleWith: nil)!

        let halfRotatedImage = image.rotated(by: .pi / 2)
        XCTAssertNotNil(halfRotatedImage)
        XCTAssertEqual(halfRotatedImage!.size, CGSize(width: image.size.height, height: image.size.width))

        let rotatedImage = image.rotated(by: .pi)
        XCTAssertNotNil(rotatedImage)
        XCTAssertEqual(rotatedImage!.size, image.size)
        XCTAssertNotEqual(image.jpegData(compressionQuality: 1), rotatedImage!.jpegData(compressionQuality: 1))
    }

    func testFilled() {
        let image = UIImage(color: .black, size: CGSize(width: 20, height: 20))
        let image2 = UIImage(color: .yellow, size: CGSize(width: 20, height: 20))
        XCTAssertEqual(image.filled(withColor: .yellow).bytesSize, image2.bytesSize)

        var emptyImage = UIImage()
        var filledImage = emptyImage.filled(withColor: .red)
        XCTAssertEqual(emptyImage, filledImage)

        emptyImage = UIImage(color: .yellow, size: CGSize.zero)
        filledImage = emptyImage.filled(withColor: .red)
        XCTAssertEqual(emptyImage, filledImage)
    }

    func testBase64() {
        let base64String = "iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAE0lEQVR42mP8v5JhEwMaYKSBIADNAwvIr8dhZAAAAABJRU5ErkJggg=="
        let image = UIImage(base64String: base64String)
        XCTAssertNotNil(image)

        let size = CGSize(width: 5, height: 5)
        XCTAssertEqual(image?.size, size)

        XCTAssertEqual(image?.bytesSize, 787)

        let scale: CGFloat = 5.0
        let scaledSize = CGSize(width: size.width / scale, height: size.height / scale)

        let scaledImage = UIImage(base64String: base64String, scale: scale)
        XCTAssertEqual(scaledImage?.size, scaledSize)
    }

    func testURL() {
        guard let swifterSwiftLogo = URL(string: "https://raw.githubusercontent.com/SwifterSwift/SwifterSwift/master/Tests/ResourcesTests/TestImage.png") else { XCTAssert(false, "Swifter Swift Test Image not available, or url is no longer valid."); return}
        let image = try? UIImage(url: swifterSwiftLogo)
        XCTAssertNotNil(image)

        let size = CGSize(width: 1000, height: 232)
        XCTAssertEqual(image?.size, size)

        let scale: CGFloat = 5.0
        let scaledSize = CGSize(width: size.width / scale, height: size.height / scale)

        let scaledImage = try? UIImage(url: swifterSwiftLogo, scale: scale)
        XCTAssertNotNil(scaledImage)
        XCTAssertEqual(scaledImage?.size, scaledSize)
    }

    func testTinted() {
        let baseImage = UIImage(color: .white, size: CGSize(width: 20, height: 20))
        let tintedImage = baseImage.tint(.black, blendMode: .overlay)
        let testImage = UIImage(color: .black, size: CGSize(width: 20, height: 20))
        XCTAssertEqual(testImage.bytesSize, tintedImage.bytesSize)
    }

    func testWithBackgroundColor() {
        let size = CGSize(width: 1, height: 1)
        let clearImage = UIImage(color: .clear, size: size)
        let imageWithBackgroundColor = clearImage.withBackgroundColor(.black)
        XCTAssertNotNil(imageWithBackgroundColor)
        let blackImage = UIImage(color: .black, size: size)
        XCTAssertEqual(imageWithBackgroundColor.pngData(), blackImage.pngData())
    }

    func testWithCornerRadius() {
        let image = UIImage(color: .black, size: CGSize(width: 20, height: 20))
        XCTAssertNotNil(image.withRoundedCorners())
        XCTAssertNotNil(image.withRoundedCorners(radius: 5))
        XCTAssertNotNil(image.withRoundedCorners(radius: -10))
        XCTAssertNotNil(image.withRoundedCorners(radius: 30))
    }

}

#endif
