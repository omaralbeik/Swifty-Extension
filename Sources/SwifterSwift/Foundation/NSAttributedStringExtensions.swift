// NSAttributedStringExtensions.swift - Copyright 2020 SwifterSwift

#if canImport(Foundation)
import Foundation

#if canImport(UIKit)
import UIKit
#endif

#if canImport(AppKit)
import AppKit
#endif

// MARK: - Properties

public extension NSAttributedString {
    /// SwifterSwift: Bolded string using the system font.
    #if !os(Linux)
    var bolded: NSAttributedString {
        guard !string.isEmpty else { return self }

        let pointSize: CGFloat
        if let font = attribute(.font, at: 0, effectiveRange: nil) as? Font {
            pointSize = font.pointSize
        } else {
            #if os(tvOS) || os(watchOS)
            pointSize = Font.preferredFont(forTextStyle: .headline).pointSize
            #else
            pointSize = Font.systemFontSize
            #endif
        }
        return applying(attributes: [.font: Font.boldSystemFont(ofSize: pointSize)])
    }
    #endif

    #if !os(Linux)
    /// SwifterSwift: Underlined string.
    var underlined: NSAttributedString {
        return applying(attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue])
    }
    #endif

    #if canImport(UIKit)
    /// SwifterSwift: Italicized string using the system font.
    var italicized: NSAttributedString {
        guard !string.isEmpty else { return self }

        let pointSize: CGFloat
        if let font = attribute(.font, at: 0, effectiveRange: nil) as? UIFont {
            pointSize = font.pointSize
        } else {
            #if os(tvOS) || os(watchOS)
            pointSize = UIFont.preferredFont(forTextStyle: .headline).pointSize
            #else
            pointSize = UIFont.systemFontSize
            #endif
        }
        return applying(attributes: [.font: UIFont.italicSystemFont(ofSize: pointSize)])
    }
    #endif

    #if !os(Linux)
    /// SwifterSwift: Struckthrough string.
    var struckthrough: NSAttributedString {
        return applying(attributes: [.strikethroughStyle: NSNumber(value: NSUnderlineStyle.single.rawValue)])
    }
    #endif

    /// SwifterSwift: Dictionary of the attributes applied across the whole string.
    var attributes: [Key: Any] {
        guard length > 0 else { return [:] }
        return attributes(at: 0, effectiveRange: nil)
    }
}

// MARK: - Methods

public extension NSAttributedString {
    /// SwifterSwift: Applies given attributes to the new instance of NSAttributedString initialized with self object.
    ///
    /// - Parameter attributes: Dictionary of attributes.
    /// - Returns: NSAttributedString with applied attributes.
    func applying(attributes: [Key: Any]) -> NSAttributedString {
        guard !string.isEmpty else { return self }

        let copy = NSMutableAttributedString(attributedString: self)
        copy.addAttributes(attributes, range: NSRange(0..<length))
        return copy
    }

    #if canImport(AppKit) || canImport(UIKit)
    /// SwifterSwift: Add color to NSAttributedString.
    ///
    /// - Parameter color: text color.
    /// - Returns: a NSAttributedString colored with given color.
    func colored(with color: Color) -> NSAttributedString {
        return applying(attributes: [.foregroundColor: color])
    }
    #endif

    /// SwifterSwift: Apply attributes to substrings matching a regular expression.
    ///
    /// - Parameters:
    ///   - attributes: Dictionary of attributes.
    ///   - pattern: a regular expression to target.
    ///   - options: The regular expression options that are applied to the expression during matching. See NSRegularExpression.Options for possible values.
    /// - Returns: An NSAttributedString with attributes applied to substrings matching the pattern.
    func applying(attributes: [Key: Any],
                  toRangesMatching pattern: String,
                  options: NSRegularExpression.Options = []) -> NSAttributedString {
        guard let pattern = try? NSRegularExpression(pattern: pattern, options: options) else { return self }

        let matches = pattern.matches(in: string, options: [], range: NSRange(0..<length))
        let result = NSMutableAttributedString(attributedString: self)

        for match in matches {
            result.addAttributes(attributes, range: match.range)
        }

        return result
    }

    /// SwifterSwift: Apply attributes to occurrences of a given string.
    ///
    /// - Parameters:
    ///   - attributes: Dictionary of attributes.
    ///   - target: a subsequence string for the attributes to be applied to.
    /// - Returns: An NSAttributedString with attributes applied on the target string.
    func applying<T: StringProtocol>(attributes: [Key: Any],
                                     toOccurrencesOf target: T) -> NSAttributedString {
        let pattern = "\\Q\(target)\\E"

        return applying(attributes: attributes, toRangesMatching: pattern)
    }
}

// MARK: - Initializers

public extension NSAttributedString {
    #if os(iOS) || os(tvOS)
    /// SwifterSwift: Creates an attributed string with an image centered by a font.
    /// - Parameters:
    ///   - image: The image to create attributed string with (the image will not be scaled).
    ///   - font: The font by which the image should be centered.
    ///
    /// https://stackoverflow.com/a/45161058
    convenience init(image: UIImage, font: UIFont) {
        let icon = NSTextAttachment()
        icon.bounds = CGRect(x: 0, y: (font.capHeight - image.size.height).rounded() / 2,
                             width: image.size.width, height: image.size.height)
        icon.image = image

        self.init(attachment: icon)
    }
    #endif
    
    #if os(macOS)
    /// SwifterSwift: Creates an attributed string with an image centered by a font.
    /// - Parameters:
    ///   - image: The image to create attributed string with (the image will not be scaled).
    ///   - font: The font by which the image should be centered.
    ///
    /// https://stackoverflow.com/a/45161058
    @available(macOS 10.11, *)
    convenience init(image: NSImage, font: NSFont) {
        let icon = NSTextAttachment()
        icon.bounds = CGRect(x: 0, y: (font.capHeight - image.size.height).rounded() / 2,
                             width: image.size.width, height: image.size.height)
        icon.image = image

        self.init(attachment: icon)
    }
    #endif
}

// MARK: - Operators

public extension NSAttributedString {
    /// SwifterSwift: Add a NSAttributedString to another NSAttributedString.
    ///
    /// - Parameters:
    ///   - lhs: NSAttributedString to add to.
    ///   - rhs: NSAttributedString to add.
    static func += (lhs: inout NSAttributedString, rhs: NSAttributedString) {
        let string = NSMutableAttributedString(attributedString: lhs)
        string.append(rhs)
        lhs = string
    }

    /// SwifterSwift: Add a NSAttributedString to another NSAttributedString and return a new NSAttributedString instance.
    ///
    /// - Parameters:
    ///   - lhs: NSAttributedString to add.
    ///   - rhs: NSAttributedString to add.
    /// - Returns: New instance with added NSAttributedString.
    static func + (lhs: NSAttributedString, rhs: NSAttributedString) -> NSAttributedString {
        let string = NSMutableAttributedString(attributedString: lhs)
        string.append(rhs)
        return NSAttributedString(attributedString: string)
    }

    /// SwifterSwift: Add a NSAttributedString to another NSAttributedString.
    ///
    /// - Parameters:
    ///   - lhs: NSAttributedString to add to.
    ///   - rhs: String to add.
    static func += (lhs: inout NSAttributedString, rhs: String) {
        lhs += NSAttributedString(string: rhs)
    }

    /// SwifterSwift: Add a NSAttributedString to another NSAttributedString and return a new NSAttributedString instance.
    ///
    /// - Parameters:
    ///   - lhs: NSAttributedString to add.
    ///   - rhs: String to add.
    /// - Returns: New instance with added NSAttributedString.
    static func + (lhs: NSAttributedString, rhs: String) -> NSAttributedString {
        return lhs + NSAttributedString(string: rhs)
    }
}

#endif
