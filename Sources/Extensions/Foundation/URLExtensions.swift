//
//  URLExtensions.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 03/02/2017.
//  Copyright © 2017 SwifterSwift
//

#if canImport(Foundation)
import Foundation

#if canImport(UIKit) && canImport(AVFoundation)
import UIKit
import AVFoundation
#endif

// MARK: - Properties
public extension URL {

	/// SwifterSwift: Dictionary of the URL's query parameters
	public var queryParameters: [String: String]? {
		guard let components = URLComponents(url: self, resolvingAgainstBaseURL: false), let queryItems = components.queryItems else { return nil }

		var items: [String: String] = [:]

		for queryItem in queryItems {
			items[queryItem.name] = queryItem.value
		}

		return items
	}
}

// MARK: - Methods
public extension URL {

    /// SwifterSwift: URL initiate with percent encoding
    ///
    ///     let urlString = "http://www.prothomalo.com/bangladesh/article/1472031/নারায়ণগঞ্জে-গ্যাসবোমার-ওপর-বসবাস-তাঁদের"
    ///     let url = URL.initWithPercentEncoding(urlString)
    ///     url -> "http://www.prothomalo.com/bangladesh/article/1472031/%E0%A6%A8%E0%A6%BE%E0%A6%B0%E0%A6%BE%E0%A6%AF%E0%A6%BC%E0%A6%A3%E0%A6%97%E0%A6%9E%E0%A7%8D%E0%A6%9C%E0%A7%87-%E0%A6%97%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%B8%E0%A6%AC%E0%A7%8B%E0%A6%AE%E0%A6%BE%E0%A6%B0-%E0%A6%93%E0%A6%AA%E0%A6%B0-%E0%A6%AC%E0%A6%B8%E0%A6%AC%E0%A6%BE%E0%A6%B8-%E0%A6%A4%E0%A6%BE%E0%A6%81%E0%A6%A6%E0%A7%87%E0%A6%B0"
    ///
    /// - Parameters: string representation of an url
    /// - Returns: initated url using the percent encoding
    public init?(withPercentEncodingOfString string: String) {
        if let encodedString = string.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed) {
            self.init(string: encodedString)
        } else {
            return nil
        }
    }
	/// SwifterSwift: URL with appending query parameters.
	///
	///		let url = URL(string: "https://google.com")!
	///		let param = ["q": "Swifter Swift"]
	///		url.appendingQueryParameters(params) -> "https://google.com?q=Swifter%20Swift"
	///
	/// - Parameter parameters: parameters dictionary.
	/// - Returns: URL with appending given query parameters.
	public func appendingQueryParameters(_ parameters: [String: String]) -> URL {
		var urlComponents = URLComponents(url: self, resolvingAgainstBaseURL: true)!
		var items = urlComponents.queryItems ?? []
		items += parameters.map({ URLQueryItem(name: $0, value: $1) })
		urlComponents.queryItems = items
		return urlComponents.url!
	}

	/// SwifterSwift: Append query parameters to URL.
	///
	///		var url = URL(string: "https://google.com")!
	///		let param = ["q": "Swifter Swift"]
	///		url.appendQueryParameters(params)
	///		print(url) // prints "https://google.com?q=Swifter%20Swift"
	///
	/// - Parameter parameters: parameters dictionary.
	public mutating func appendQueryParameters(_ parameters: [String: String]) {
		self = appendingQueryParameters(parameters)
	}

    /// SwifterSwift: Returns a new URL by removing all the path components.
    ///
    ///     let url = URL(string: "https://domain.com/path/other")!
    ///     print(url.deletingAllPathComponents()) // prints "https://domain.com/"
    ///
    /// - Returns: URL with all path components removed.
    public func deletingAllPathComponents() -> URL {
        var url: URL = self
        for _ in 0..<pathComponents.count - 1 {
            url.deleteLastPathComponent()
        }
        return url
    }

    /// SwifterSwift: Remove all the path components from the URL.
    ///
    ///        var url = URL(string: "https://domain.com/path/other")!
    ///        url.deleteAllPathComponents()
    ///        print(url) // prints "https://domain.com/"
    public mutating func deleteAllPathComponents() {
        for _ in 0..<pathComponents.count - 1 {
            deleteLastPathComponent()
        }
    }

}

// MARK: - Methods
public extension URL {

	#if os(iOS) || os(tvOS)
	/// Generate a thumbnail image from given url. Returns nil if no thumbnail could be created. This function may take some time to complete. It's recommended to dispatch the call if the thumbnail is not generated from a local resource.
	///
	///     var url = URL(string: "https://video.golem.de/files/1/1/20637/wrkw0718-sd.mp4")!
	///     var thumbnail = url.thumbnail()
	///     thumbnail = url.thumbnail(fromTime: 5)
	///
	///     DisptachQueue.main.async {
	///         someImageView.image = url.thumbnail()
	///     }
	///
	/// - Parameter time: Seconds into the video where the image should be generated.
	/// - Returns: The UIImage result of the AVAssetImageGenerator
	public func thumbnail(fromTime time: Float64 = 0) -> UIImage? {
		let imageGenerator = AVAssetImageGenerator(asset: AVAsset(url: self))
		let time = CMTimeMakeWithSeconds(time, 1)
		var actualTime = CMTimeMake(0, 0)

		guard let cgImage = try? imageGenerator.copyCGImage(at: time, actualTime: &actualTime) else {
			return nil
		}
		return UIImage(cgImage: cgImage)
	}
	#endif

}
#endif
