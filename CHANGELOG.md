# CHANGELOG

The changelog for **SwifterSwift**. Also see the [releases](https://github.com/SwifterSwift/SwifterSwift/releases) on GitHub.

## Upcoming Release

## [v5.3.0](https://github.com/SwifterSwift/SwifterSwift/releases/tag/5.3.0)
### Breaking Change
- **Sequence**
  - Remove `last(where:)` and move `last(where:equals:)` to `BidirectionalCollection`, since it only makes semantic sense for ordered sequences. [#912](https://github.com/SwifterSwift/SwifterSwift/pull/912) by [guykogus](https://github.com/guykogus)
- **UIView**
  - Rename `shadowColor`, `shadowOffset`, `shadowOpacity` and `shadowRadius` to `layerShadowColor`, `layerShadowOffset`, `layerShadowOpacity` and `layerShadowRadius` to avoid naming collisions with subclasses properties defined in other modules e.g. UIKit. [#897](https://github.com/SwifterSwift/SwifterSwift/pull/897) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida)
  - Rename `borderColor`, `borderWidth` and `cornerRadius` to `layerBorderColor`, `layerBorderWidth`, and `layerCornerRadius` to avoid naming collisions with subclasses properties defined in other modules e.g. UIKit. [#972](https://github.com/SwifterSwift/SwifterSwift/pull/972) by [Jayxiang](https://github.com/Jayxiang)

### Added
- **SCN3Vector**
  - Added `normalized` method, and basic division functions (`SCNVector3 / scalar`, and `SCNVector3 /= scalar`. [#908](https://github.com/SwifterSwift/SwifterSwift/pull/908) by [thisIsTheFoxe](https://github.com/thisisthefoxe)
- **Dictionary**
  - Added `pick(keys:)` to pick part of a dictionary with specified keys. [#911](https://github.com/SwifterSwift/SwifterSwift/pull/911) by [MaratIbragimov](https://github.com/MaratIbragimov)
- **UIScrollView**
  - Added `visibleRect`, `scrollToTop(animated:)`, `scrollToLeft(animated:)`, `scrollToBottom(animated:)`, `scrollToRight(animated:)`, `scrollUp(animated:)`, `scrollLeft(animated:)`, `scrollDown(animated:)`, `scrollRight(animated:)`. [#888](https://github.com/SwifterSwift/SwifterSwift/pull/888) by [guykogus](https://github.com/guykogus)
- **XCTest**
  - Added `XCTAssertEqual(_:_:accuracy:_:file:line:)` for checking if `Color` objects are equal within a given level of accuracy. [#889](https://github.com/SwifterSwift/SwifterSwift/pull/889) by [guykogus](https://github.com/guykogus)
- **FloatingPoint**
  - Moved the square root operator `√` from `Double` and `Float` to make it generic. [#880](https://github.com/SwifterSwift/SwifterSwift/pull/880) by [guykogus](https://github.com/guykogus)
- **Collection**
  - Added `fullRange` to get the entire range of indices in a collection. [#902](https://github.com/SwifterSwift/SwifterSwift/pull/902) by [guykogus](https://github.com/guykogus)
  - Moved `indices(of:)` from `RandomAccessCollection` to find the indices of an element. [#863](https://github.com/SwifterSwift/SwifterSwift/pull/863) by [guykogus](https://github.com/guykogus)
- **UIViewController**:
  - Added `instantiate(from:bundle:identifier:)` function to `UIViewController` to make it easier to instantiate it from storyboard. [#860](https://github.com/SwifterSwift/SwifterSwift/pull/860) by [VatoKo](https://github.com/VatoKo)
- **String**:
  - Added `fullNSRange`, `range(from:)`, `nsRange(from:)` and `subscript` for converting between `Range<String.Index>` and `NSRange`. [#902](https://github.com/SwifterSwift/SwifterSwift/pull/902) by [guykogus](https://github.com/guykogus)
  - Overloaded Swift's 'contains' operator (`~=`) for `String` to check regex matching. [#858](https://github.com/SwifterSwift/SwifterSwift/pull/858) by [VatoKo](https://github.com/VatoKo)
  - `regexEscaped`, which returns an escaped string for inclusion in a regex pattern
  - Added `matches(regex:options:)` and the `~= regex` to check directly against NSRegularExpression. Also added `replacingOccurrences(regex:template:options:searchRange:)` as a more convenient way to replace NSRegularExpressions. [#901](https://github.com/SwifterSwift/SwifterSwift/pull/901) by [gurgeous](https://github.com/gurgeous)
- **DispatchQueue**:
  - Added `asyncAfter(delay:qos:flags:execute:)` method to use it more conveniently without typing unnecessary `.now() + delay`. [#859](https://github.com/SwifterSwift/SwifterSwift/pull/859) by [VatoKo](https://github.com/VatoKo)
  - Re-added `debounce(delay:action:)` for only executing a closure once using a throttle delay. [#869](https://github.com/SwifterSwift/SwifterSwift/pull/869) by [guykogus](https://github.com/guykogus)
- **RangeReplaceableCollection**:
  - `subscript(offset:)` and `subscript(range:)` to access and replace elements by the index offsets. [#826](https://github.com/SwifterSwift/SwifterSwift/pull/826) by [guykogus](https://github.com/guykogus)
- **Sequence**:
  - Added `contains(_:)` for `Hashable` elements for performance improvement. [#912](https://github.com/SwifterSwift/SwifterSwift/pull/912) by [guykogus](https://github.com/guykogus)
  - Added `first(where:equals:)` to find the first element of the sequence with having property by given key path equals to given value. [#836](https://github.com/SwifterSwift/SwifterSwift/pull/836) by [hamtiko](https://github.com/hamtiko)
  - Added `last(where:equals:)` to find the last element of the sequence with having property by given key path equals to given value. [#838](https://github.com/SwifterSwift/SwifterSwift/pull/838) by [hamtiko](https://github.com/hamtiko)
- **SKNode**:
  - `center`, `topLeft`, `topRight`, `bottomLeft`, `bottomRight` to get anchor position or set position using anchor. [#835](https://github.com/SwifterSwift/SwifterSwift/pull/835) by [rypyak](https://github.com/rypyak)
- **CGSize**:
  - Added new `+`, `+=`, `-` and `-=` operator extensions for tuple (width: CGFloat, height: CGFloat). [#841](https://github.com/SwifterSwift/SwifterSwift/pull/841) by [hamtiko](https://github.com/hamtiko)
- **WKWebView**:
  - Added `loadURL(_:)` and `loadURLString(_:)` extensions for `WkWebView`. [#851](https://github.com/SwifterSwift/SwifterSwift/pull/851) by [hamtiko](https://github.com/hamtiko)
- **HKActivitySummary**:
  - Added `isStandGoalMet`, `isExerciseTimeGoalMet`, and `isEnergyBurnedGoalMet`. [#875](https://github.com/SwifterSwift/SwifterSwift/pull/875) by [lhygilbert](https://github.com/lhygilbert)
- **UIView**:
  - Added `masksToBounds` (IBInspectable) extension. [#877](https://github.com/SwifterSwift/SwifterSwift/pull/877) by [hamtiko](https://github.com/hamtiko)
- **UIImage**
  - Added `averageColor`, which calculates the average UIColor for an entire image. [#884](https://github.com/SwifterSwift/SwifterSwift/pull/884) by [gurgeous](https://github.com/gurgeous)
  - Added `loadFromNib(withClass:)`, which loads a UIView of a particular type from a nib file. [#885](https://github.com/SwifterSwift/SwifterSwift/pull/885) by [gurgeous](https://github.com/gurgeous)
  - Added `findConstraint` for finding an existing constraint. [#886](https://github.com/SwifterSwift/SwifterSwift/pull/886) by [gurgeous]
  - Added `widthConstraint`, `heightConstraint`, `leadingConstraint`, `trailingConstraint`, `topConstraint`, and `bottomConstraint` for finding specific constraints. [#886](https://github.com/SwifterSwift/SwifterSwift/pull/886) by [gurgeous]
- **StringProtocol**
  - Added `replacingOccurrences(ofPattern:withTemplate:options:searchRange:)` as a more convenient way to replace patterns. [#901](https://github.com/SwifterSwift/SwifterSwift/pull/901) by [gurgeous](https://github.com/gurgeous)
- **Measurement**
  - Added `.degrees(_:)`, `arcMinutes(_:)`, `arcSeconds(_:)`, `radians(_:)`, `gradians(_:)` and `revolutions(_:)`  to conveniently initialize measurement with corresponding unit. [#936](https://github.com/SwifterSwift/SwifterSwift/pull/936) by [Shiva Huang](https://github.com/ShivaHuang)
- **SwiftUI**
  - Added the `eraseToAnyView()` modifier as as shortcut for `AnyView(_:)` to conveniently erase any SwiftUI `View` to `AnyView`. [#963](https://github.com/SwifterSwift/SwifterSwift/pull/963) by [jevonmao](https://github.com/jevonmao)
- **UITextField**
  - Added `addToolbar(items:height:)` to add a toolbar to a `UITextField`. [#954](https://github.com/SwifterSwift/SwifterSwift/pull/954) by [Randhir Kumar](https://github.com/randhirkumar65)
- **URL**
  - Added the `(unsafeString: String)` initializer for `URL` as a more conveniently to construct unsafe `URL`s from `String` by [jevonmao](https://github.com/jevonmao)
### Changed
- **NSAttributedString**:
  - `bolded` maintains font size and works on all platforms except Linux. `italicized` maintains font size and works on all platforms except Linux and macOS. [#900](https://github.com/SwifterSwift/SwifterSwift/pull/900) by [guykogus](https://github.com/guykogus)
  - `applying(attributes:)` changed access modifier from `fileprivate` to `public`. [#832](https://github.com/SwifterSwift/SwifterSwift/pull/832) by [cHaLkdusT](https://github.com/cHaLkdusT)
- **Color**:
  - Refactored `init(light:dark:)` to remove deployment target version restrictions. [#844](https://github.com/SwifterSwift/SwifterSwift/pull/844) by [VincentSit](https://github.com/vincentsit).
  - Use `enum` to declare namespace instead of using `struct`. Thus private initializer is no longer needed. [#927](https://github.com/SwifterSwift/SwifterSwift/pull/927) by [Shiva Huang](https://github.com/ShivaHuang)
  - Add `init?(argbHexString:)` to support the common ARGB format used in Android. [#971](https://github.com/SwifterSwift/SwifterSwift/pull/971) by [yonat](https://github.com/yonat)
- **CAGradientLayer**:
  - In `init(colors:locations:startPoint:endPoint:type:)` added default values to `startPoint` and `endPoint`. [#864](https://github.com/SwifterSwift/SwifterSwift/pull/864) by [guykogus](https://github.com/guykogus)
- **UITextField**:
  - Added `addPaddingRight`,`addPaddingRightIcon`extension,[#878](https://github.com/SwifterSwift/SwifterSwift/pull/878) by [Jayxiang](https://github.com/Jayxiang)
- **UIAlertController**:
  - Mark `show` method as unavailable for `iOSAppExtension` targets. [#918](https://github.com/SwifterSwift/SwifterSwift/pull/918) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida)
- **UIRefreshControl**:
  - Add `beginRefreshing(animated:sendAction:)` that works inside any `UIScrollView` and not only `UITableView`. [#949](https://github.com/SwifterSwift/SwifterSwift/pull/949) by [yonat](https://github.com/yonat)

### Deprecated
- **Sequence**:
  - Marked `map(by:)`, `compactMap(by:)`, `filter(by:)` as deprecated in favor use of Key Path expressions as functions feature in Swift 5.3. [#862](https://github.com/SwifterSwift/SwifterSwift/pull/862) by [Roman Podymov](https://github.com/RomanPodymov).

### Removed
- **UIDatePicker**
  - Disabled `textColor` when compiling for target `macCatalyst` as it will crash. [#864](https://github.com/SwifterSwift/SwifterSwift/pull/864) by [guykogus](https://github.com/guykogus)

### Fixed
- **Collection**
  - `indices(where:)`, `forEach(slice:body:)` can be used on a collection with any index type. `average()` can be used on any integer element type. [#863](https://github.com/SwifterSwift/SwifterSwift/pull/863) by [guykogus](https://github.com/guykogus)
- **CAGradientLayer**:
  - CAGradientLayer extensions inaccessible through internal level protection. [#856](https://github.com/SwifterSwift/SwifterSwift/pull/856) by [Den Andreychuk](https://github.com/denandreychuk).
- **StringExtensions.swift**:
  - Fixed a bug: When the length of a string is 0, calling truncated method will crash. [#866](https://github.com/SwifterSwift/SwifterSwift/pull/866) by [phil zhang](https://github.com/philCc)
  - Fixed `String.base64Decoded` making it a safe decode by ignore non-base64 characters. [#961](https://github.com/SwifterSwift/SwifterSwift/pull/961) by [Jayxiang](https://github.com/Jayxiang)
- **UITextField**
  - Fixed a bug:UITextField `addPaddingLeftIcon` doesn't work on iOS 13[#876](https://github.com/SwifterSwift/SwifterSwift/issues/876) by [Jayxiang](https://github.com/Jayxiang)
- **UIImage**
  - Fixed a bug:UIImage `rotated(by:)` lose origin scale, result in image blurred[#904](https://github.com/SwifterSwift/SwifterSwift/pull/904) by [yanpanpan](https://github.com/yanpanpan)
- **ColorExtension**:
  - Fixed a bug: `Color.FlatUI` can be initialized. by [Shiva Huang](https://github.com/ShivaHuang)
  - Fixed `Color.init?(hexString: String, transparency: CGFloat = 1)` was not handling uppercase `0X` in hex prefix [#947](https://github.com/SwifterSwift/SwifterSwift/pull/947) by [Zero.D.Saber](https://github.com/faimin)

### Security

---

## [v5.2.0](https://github.com/SwifterSwift/SwifterSwift/releases/tag/5.2.0)

### Added

- **CATransform3D**:
  - `identity`, `isIdentity`, `init(translationX:y:z:)`, `init(scaleX:y:z:)`, `init(rotationAngle:x:y:z:)`, `translatedBy(x:y:z:)`, `scaledBy(x:y:z:)`, `rotated(by:x:y:z:)`, `inverted()`, `concatenating(_:)`, `translateBy(x:y:z:)`, `scaleBy(x:y:z:)`, `rotate(by:x:y:z:)`, `invert()`, `concatenate(_:)`, `isAffine` and `affineTransform()`. Also conforms to `Codable` and `Equatable`. [#819](https://github.com/SwifterSwift/SwifterSwift/pull/819) by [guykogus](https://github.com/guykogus)
- **CGAffineTransform**:
  - `transform3D()`. [#819](https://github.com/SwifterSwift/SwifterSwift/pull/819) by [guykogus](https://github.com/guykogus)
- **NotificationCenter**:
  - `observeOnce(forName:object:queue:using:)` for observing a single posting of a notification. [#812](https://github.com/SwifterSwift/SwifterSwift/pull/812) by [guykogus](https://github.com/guykogus)
- **Optional**:
  - Conform to `Equatable` when `Wrapped` is `RawRepresentable` and its `RawValue` is `Equatable`. [#804](https://github.com/SwifterSwift/SwifterSwift/pull/804) by [guykogus](https://github.com/guykogus)
- **CoreLocation**:
  - Added `Array where Element: CLLocation extension` and added `distance(unitLength:)` function. [#799](https://github.com/SwifterSwift/SwifterSwift/pull/799) by [trevorphillips](https://github.com/trevorphillips)
- **Decodable**:
  - Added `init?(data:decoder:)` to decode `Decodable` (Codable) type models. [#797](https://github.com/SwifterSwift/SwifterSwift/pull/797) by [Mustafa GUNES](https://github.com/mustafagunes).
- **CLVisit**:
  - Created `CLVisit Extension` and added `location` property. [#792](https://github.com/SwifterSwift/SwifterSwift/pull/792) by [trevorphillips](https://github.com/trevorphillips)
- **EdgeInsets**:
  - Unified `UIEdgeInsets` and `NSEdgeInsets` into a single typealias, `EdgeInsets`, similar to what we do with `UIColor` and `NSColor`. For the tests to function it was required to add the static `zero` property to `NSEdgeInsets` and to make it conform to `Equatable`. [#785](https://github.com/SwifterSwift/SwifterSwift/pull/785) by [guykogus](https://github.com/guykogus)
- **Array**:
  - Added `sorted(like:keyPath:)` to sort an array like another array based on a key path. [#772](https://github.com/SwifterSwift/SwifterSwift/pull/772) by [MaxHaertwig](https://github.com/maxhaertwig).
- **MKMapView**:
  - Added `zoom(to:meter:edgePadding:animated:)` method to zoom multiple `MKMapView` coordinates. [#723](https://github.com/SwifterSwift/SwifterSwift/pull/723) by [Mustafa GUNES](https://github.com/mustafagunes).
- **Dictionary**:
  - Added `init(grouping:by:)` to initialize a dictionary by grouping sequence from a hashable `KeyPath`. [#751](https://github.com/SwifterSwift/SwifterSwift/pull/751) by [mmdock](https://github.com/mmdock)
- **RangeReplaceableCollection**:
  - Added `removeDuplicates(keyPath:)` for removing duplicate elements based on key path. [#737](https://github.com/SwifterSwift/SwifterSwift/pull/737) by [Ilya Glushchuk](https://github.com/iglushchuk).
  - Added `appendIfNonNil(_:)` and `appendIfNonNil(contentsOf:)` methods that can append optional elements and sequences. [#966](https://github.com/SwifterSwift/SwifterSwift/pull/966) by [jevonmao](https://github.com/jevonmao)
- **Color**:
  - Added `init(light:dark:)` to create an NSColor/UIColor with different variations for light and dark mode. Only available in iOS/tvOS 13.0, macOS 10.15. [#722](https://github.com/SwifterSwift/SwifterSwift/pull/722) by [MaxHaertwig](https://github.com/maxhaertwig).
- **String**:
  - Added `withPrefix(_:)`, which provides a method to add a prefix to a string. If the string already has that prefix, it simply returns the original string. [#720](https://github.com/SwifterSwift/SwifterSwift/pull/720) by [Zach Frew](https://github.com/zmfrew).
- **NSRegularExpression**:
  - Added `enumerateMatches(in:options:range:using:)`, `matches(in:options:range:)`, `numberOfMatches(in:options:range:)`, `firstMatch(in:options:range:)`, `rangeOfFirstMatch(in:options:range:)`, `stringByReplacingMatches(in:options:range:withTemplate:)`, `replaceMatches(in:options:range:withTemplate:)`, which use `String` and `String.Range` in place of `NSString` and `NSRange` to make the calls Swifter. [#727](https://github.com/SwifterSwift/SwifterSwift/pull/727) by [guykogus](https://github.com/guykogus).
- **UIBarButtonItem**:
  - Added `flexibleSpace` and `fixedSpace(width:)` extensions to UIBarButtonItem to simplify the creation of spacers. [#728](https://github.com/SwifterSwift/SwifterSwift/pull/728) by [MaxHaertwig](https://github.com/maxhaertwig).
- **UIImage**:
  - Added missing test for `compressedData(quality:)`. [#786](https://github.com/SwifterSwift/SwifterSwift/pull/786) by [thisIsTheFoxe](https://github.com/thisisthefoxe)
  - Added `withBackgroundColor(_:)` to specify a background color for a partially transparent image. [#721](https://github.com/SwifterSwift/SwifterSwift/pull/721) by [MaxHaertwig](https://github.com/maxhaertwig).
  - Added `init?(base64String:)` to create a `UIImage` from a base-64 `String`. [#741](https://github.com/SwifterSwift/SwifterSwift/issues/741) by [@thisIsTheFoxe](https://github.com/thisisthefoxe)
  - Added `pngBase64String()`, `jpegBase64String(compressionQuality:)` which return a Base 64 `String` representation of the `UIImage`s PNG or JPEG data. [#747](https://github.com/SwifterSwift/SwifterSwift/pull/747) by [Moritz Sternemann](https://github.com/moritzsternemann).
  - Added `init?(url:scale:)` to initialize a `UIImage` with a given url and scale factor. [#753](https://github.com/SwifterSwift/SwifterSwift/pull/753) by [mmdock](https://github.com/mmdock)
- **CAGradientLayer**:
  - Added `init(colors:locations:startPoint:endPoint:type:)` convenience initializer. [#726](https://github.com/SwifterSwift/SwifterSwift/pull/726) by [JayMehta97](https://github.com/JayMehta97).
- **Sequence**:
  - Added `sum(for:)` to sum up an `AdditiveArithmetic` property, referenced by `KeyPath`, of all elements in a sequence. [#736](https://github.com/SwifterSwift/SwifterSwift/pull/736) by [Moritz Sternemann](https://github.com/moritzsternemann).
  - Added `sorted(by:and:)` and `sorted(by:and:and:)` to obtain a sorted sequence based on multiple key paths. [#796](https://github.com/SwifterSwift/SwifterSwift/pull/796) by [MaxHaertwig](https://github.com/maxhaertwig).
  - Added `map(by:)` to map the sequence elements by a given key path. [#763](https://github.com/SwifterSwift/SwifterSwift/pull/763) by [Roman Podymov](https://github.com/RomanPodymov).
  - Added `compactMap(by:)` to map the sequence elements by a given key path to the non-nil elements array. [#766](https://github.com/SwifterSwift/SwifterSwift/pull/766) by [Roman Podymov](https://github.com/RomanPodymov).
  - Added `filter(by:)` to filter the sequence elements by a given boolean key path. [#771](https://github.com/SwifterSwift/SwifterSwift/pull/771) by [Roman Podymov](https://github.com/RomanPodymov).
- **MutableCollection**:
  - Added `assignToAll(value:keyPath:)` to assign given value to field `keyPath` of every element in the collection. [#759](https://github.com/SwifterSwift/SwifterSwift/issues/759) by [cyber-gh](https://github.com/cyber-gh).
  - Added `sort(by:and:)` and `sort(by:and:and:)` to sort a sequence based on multiple key paths. [#796](https://github.com/SwifterSwift/SwifterSwift/pull/796) by [MaxHaertwig](https://github.com/maxhaertwig).
- **KeyedDecodingContainer**:
  - Added `decodeBoolAsIntOrString(key:)` to try to decode a `Bool` as `Int` then `String` before decoding as Bool. [#750](https://github.com/SwifterSwift/SwifterSwift/pull/750) by [FraDeliro](https://github.com/FraDeliro).
  - Added `decodeBoolAsIntOrStringIfPresent(key:)` to try to decode a `Bool` as `Int` then `String` before decoding as `Bool` if present. [#750](https://github.com/SwifterSwift/SwifterSwift/pull/750) by [FraDeliro](https://github.com/FraDeliro).
- **Locale**:
  - Added `is12HourTimeFormat` to indicate if locale has 12h format. [#793](https://github.com/SwifterSwift/SwifterSwift/pull/793) by [DimaZava](https://github.com/DimaZava).
  - `flagEmoji(forRegionCode:)` to convert a region code into the corresponding flag emoji. [#813](https://github.com/SwifterSwift/SwifterSwift/pull/813) by [guykogus](https://github.com/guykogus)
- **URLRequest**:
  - `init(string:relativeTo:)` to allow initializing a `URL` with an optional `String`. [#818](https://github.com/SwifterSwift/SwifterSwift/pull/818) by [guykogus](https://github.com/guykogus)
  - Added `curlString` property to get a cURL command representation of this URL request. [#790](https://github.com/SwifterSwift/SwifterSwift/pull/790) by [DimaZava](https://github.com/DimaZava).
- **SKProduct**:
  - Added `localizedPrice` to get localized price of product. [#781](https://github.com/SwifterSwift/SwifterSwift/pull/781) by [strawb3rryx7](https://github.com/strawb3rryx7).
- **CGRect**
  - Added property `center`. [#814](https://github.com/SwifterSwift/SwifterSwift/pull/814) by [qchenqizhi](https://github.com/qchenqizhi).
  - Added initializer `init(center:size:)` to create `CGRect` with center and size. [#814](https://github.com/SwifterSwift/SwifterSwift/pull/814) by [qchenqizhi](https://github.com/qchenqizhi).
  - Added `resizing(to:anchor:)` to create `CGRect` by resizing with anchor. [#814](https://github.com/SwifterSwift/SwifterSwift/pull/814) by [qchenqizhi](https://github.com/qchenqizhi).

### Changed

- **Collection**:
  - Refactored `group(by:)` to be generic for all `Collection`s, not only `where Index == Int`. [#758](https://github.com/SwifterSwift/SwifterSwift/pull/758) by [guykogus](https://github.com/guykogus)
- **UIImage**:
  - Implemented `filled(withColor:)` using `UIGraphicsImageRenderer` when available. [#733](https://github.com/SwifterSwift/SwifterSwift/pull/733)
  - Updated `kilobytesSize` to be computed independently from `bytesSize` [#753](https://github.com/SwifterSwift/SwifterSwift/pull/753) by [mmdock](https://github.com/mmdock)
  - Updated `init?(base64String:)` to take in a `scale` factor paramater. [#753](https://github.com/SwifterSwift/SwifterSwift/pull/753) by [mmdock](https://github.com/mmdock)
- **UIImage**:
  - Refactored `tint(_:blendMode:)` using UIGraphicsImageRenderer if available. [#731](https://github.com/SwifterSwift/SwifterSwift/pull/731) by [FraDeliro](https://github.com/FraDeliro).
- **Sequence**:
  - Corrected documentation for `sorted(by:with:)` and `sorted(by:)`. [#751](https://github.com/SwifterSwift/SwifterSwift/pull/751) by [mmdock](https://github.com/mmdock)
- **NSAttributedString**:
  - Update `applying(attributes: [NSAttributedString.Key : Any], toRangesMatching pattern: String)` to respond `applying(attributes: [NSAttributedString.Key : Any], toRangesMatching pattern: String, options: NSRegularExpression.Options = [])` signature to support regular expression options.  [#791](https://github.com/SwifterSwift/SwifterSwift/pull/791) by [DimaZava](https://github.com/DimaZava)
- **UIButton**:
  - Refactored `centerTextAndImage(spacing:)`: now the image position can be above the text, by setting a new parameter `imageAboveText` to `true`. [#807](https://github.com/SwifterSwift/SwifterSwift/pull/807) by [qchenqizhi](https://github.com/qchenqizhi).
- **String**:
  - Bug fix `String[safe:]`, subscript should not crash. [#816](https://github.com/SwifterSwift/SwifterSwift/pull/816) by [cHaLkdusT](https://github.com/cHaLkdusT)

### Fixed

- Fixed build error occurring when building AppKit extensions for macCatalyst. [#762](https://github.com/SwifterSwift/SwifterSwift/pull/762) by [MaxHaertwig](https://github.com/maxhaertwig).
- Fixed `String.base64Decoded` making it a safe decode by including padding on the string. [#801](https://github.com/SwifterSwift/SwifterSwift/pull/801) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).
- Fixed `UIImage.cropped(to:)` making it work correctly with scaled image. [#811](https://github.com/SwifterSwift/SwifterSwift/pull/811) by [qchenqizhi](https://github.com/qchenqizhi).

---

## [v5.1.0](https://github.com/SwifterSwift/SwifterSwift/releases/tag/5.1.0)

### Added

- **Array**:
  - Added `withoutDuplicates(keyPath:)` for filtering duplicate elements based on key path. [#704](https://github.com/SwifterSwift/SwifterSwift/pull/704) by [RomanPodymov](https://github.com/RomanPodymov).

- **Sequence**:
  - Added `withoutDuplicates(transform:)` for remove duplicate elements based on condition in a sequence. [#666](https://github.com/SwifterSwift/SwifterSwift/pull/666) by [saucym](https://github.com/saucym)
  - Added `sorted(by:with:)` to return sorted array from a `Sequence` with by a given keyPath using a compare function. [#712](https://github.com/SwifterSwift/SwifterSwift/pull/712) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida)

- **MutableCollection**:
  - Added `sort(by:with:)` to sort a `Collection` with by a given keyPath using a compare function. [#712](https://github.com/SwifterSwift/SwifterSwift/pull/712) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida)

- **String**
  - `isPalindrome` computed property of String to check if it is a palindrome. [#671](https://github.com/SwifterSwift/SwifterSwift/pull/671) by [cHaLkdusT](https://github.com/cHaLkdusT).

- **CGSize**:
  - Added `aspectRatio`, `maxDimension`, and `minDimension` properties. [#662](https://github.com/SwifterSwift/SwifterSwift/pull/662) by [MaxHaertwig](https://github.com/maxhaertwig).

- **SCNBox**:
  - Added `init(width:height:length:)`, `init(sideLength:chamferRadius:)`, `init(width:height:length:chamferRadius:material:)`, `init(sideLength:chamferRadius:material:)`, `init(width:height:length:chamferRadius:color:)`, and `init(sideLength:chamferRadius:color:)` convenience initializers. [#660](https://github.com/SwifterSwift/SwifterSwift/pull/660) by [MaxHaertwig](https://github.com/maxhaertwig).

- **SCNCapsule**:
  - Added `init(capDiameter:height)`, `init(capRadius:height:material:)`, `init(capDiameter:height:material:)`, `init(capRadius:height:color:)`, and `init(capDiameter:height:color:)` convenience initializers. [#660](https://github.com/SwifterSwift/SwifterSwift/pull/660) by [MaxHaertwig](https://github.com/maxhaertwig).

- **SCNCone**:
  - Added `init(topDiameter:bottomDiameter:height)`, `init(topRadius:bottomRadius:height:material:)`, `init(topDiameter:bottomDiameter:height:material:)`, `init(topRadius:bottomRadius:height:color:)`, and `init(topDiameter:bottomDiameter:height:color:)` convenience initializers. [#660](https://github.com/SwifterSwift/SwifterSwift/pull/660) by [MaxHaertwig](https://github.com/maxhaertwig).

- **SCNCylinder**:
  - Added `init(diameter:height)`, `init(radius:height:material:)`, `init(diameter:height:material:)`, `init(radius:height:color:)`, and `init(diameter:height:color:)` convenience initializers. [#660](https://github.com/SwifterSwift/SwifterSwift/pull/660) by [MaxHaertwig](https://github.com/maxhaertwig)

- **SCNGeometry**:
  - Added `boundingSize` property to get the size of the geometry's bounding box. [#660](https://github.com/SwifterSwift/SwifterSwift/pull/660) by [MaxHaertwig](https://github.com/maxhaertwig).

- **SCNMaterial**:
  - Added `init(color:)` convenience initializer. [#660](https://github.com/SwifterSwift/SwifterSwift/pull/660) by [MaxHaertwig](https://github.com/maxhaertwig).

- **SCNPlane**:
  - Added `init(width:)`, `init(width:height:material:)`, `init(width:material:)`, `init(width:height:color:)`, and `init(width:color:)` convenience initializers. [#660](https://github.com/SwifterSwift/SwifterSwift/pull/660) by [MaxHaertwig](https://github.com/maxhaertwig).

- **SCNShape**:
  - Added `init(path:extrusionDepth:material:)` and `init(path:extrusionDepth:color:)` convenience initializers. [#660](https://github.com/SwifterSwift/SwifterSwift/pull/660) by [MaxHaertwig](https://github.com/maxhaertwig).

- **SCNSphere**:
  - Added `init(diameter:)`, `init(radius:material:)`, `init(radius:color:)`, `init(diameter:material:)`, and `init(diameter:color:)` convenience initializers. [#660](https://github.com/SwifterSwift/SwifterSwift/pull/660) by [MaxHaertwig](https://github.com/maxhaertwig).

- **SCNVector3**:
  - Added `absolute` property to calculate the vector's components as absolute values. [#660](https://github.com/SwifterSwift/SwifterSwift/pull/660) by [MaxHaertwig](https://github.com/maxhaertwig).
  - Added `length` property to calculate the vector's length. [#660](https://github.com/SwifterSwift/SwifterSwift/pull/660) by [MaxHaertwig](https://github.com/maxhaertwig).

- **UICollectionView**:
  - Added `isValidIndexPath(_:)` method to check whether given IndexPath is valid within UICollectionView. [#695](https://github.com/SwifterSwift/SwifterSwift/pull/695) by [emilrb](https://github.com/emilrb).
  - Added `safeScrollToItem(at:at:animated:)` method to safely scroll UICollectionView to the given IndexPath. [#698](https://github.com/SwifterSwift/SwifterSwift/pull/698) by [emilrb](https://github.com/emilrb)

- **Sequence**:
  - Moved `divided(by:)` ArrayExtensions to SequenceExtensions. This function separates all items into 2 lists based on a given predicate. [#706](https://github.com/SwifterSwift/SwifterSwift/pull/706) by [cHaLkdusT](https://github.com/cHaLkdusT) 

- **UIBezierPath**:
  - Added `init(from:to:)`, `init(points:)`, `init(polygonWithPoints:)`, `init(ovalOf:centered:)` and `init(rectOf:centered:)` convenience initializers. [#659](https://github.com/SwifterSwift/SwifterSwift/pull/659) by [MaxHaertwig](https://github.com/maxhaertwig).

### Changed

- **UIApplication**:
  - Refactored `queryValue(for:)` extension for URL. [#668](https://github.com/SwifterSwift/SwifterSwift/pull/668) by [LucianoPAlmeida](https://github.com/ratulSharker).

- **Sequence**:
  - `sum()` extension for Sequence is refactored. [#707](https://github.com/SwifterSwift/SwifterSwift/pull/707) by [cHaLkdusT](https://github.com/cHaLkdusT).

### Deprecated

- **Array**:
  - Deprecated `sorted(by:, ascending)` and `sort(by:ascending)` in favor of `sorted(by:with:)` and `sort(by:with:)` [#712](https://github.com/SwifterSwift/SwifterSwift/pull/712) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida)

### Removed

- **Character**:
  - Removed `isNumber`, `isLetter`, `isLowercased`, `isUppercased` and `isWhiteSpace` because the same properties are defined in the Swift standard library. [#689](https://github.com/SwifterSwift/SwifterSwift/pull/689) by [RomanPodymov](https://github.com/RomanPodymov).

- **Array**:
  - Removed `divided(by:)` function from ArrayExtensions [#706](https://github.com/SwifterSwift/SwifterSwift/pull/706) by [cHaLkdusT](https://github.com/cHaLkdusT)

### Fixed

- **UIApplication**:
  - Resolved an issue where `version` would return the wrong Info.plist value.
  - Resolved an issue where `version` and `displayName` would return nil if localized.

- **UIImage**:
  - The size of rect can equal to the size of UIImage when using `cropped(to:)` to crop UIImage. [#679](https://github.com/SwifterSwift/SwifterSwift/pull/679) by [dirtmelon](https://github.com/dirtmelon).
  - `scaled(toHeight:opaque:)` and `scaled(toWidth:opaque:)` will now keep the original scale of UIImage. [#703](https://github.com/SwifterSwift/SwifterSwift/pull/703) by [ShannonChou](https://github.com/shannonchou)

- **UITableView**:
  - `isValidIndexPath(_:)` will now return `false` for IndexPaths with a negative row or section. [#696](https://github.com/SwifterSwift/SwifterSwift/pull/696) by [emilrb](https://github.com/emilrb).

---

## [v5.0.0](https://github.com/SwifterSwift/SwifterSwift/releases/tag/5.0.0)

### Added

- **Swift 5.0 Support**
  - Updated the project to Xcode 10.2
  - Removed unnecessary `public` statements.
- **Linux Support**
  - Support for Linux running Swift 5.0 using Swift Package Manager.
- **UIApplication**:
  - Added `inferredEnvironment` to get current inferred app environment. by [omaralbeik](https://github.com/omaralbeik)
  - Added `displayName` to get application name. by [omaralbeik](https://github.com/omaralbeik)
  - Added `buildNumber` to get application build number. by [omaralbeik](https://github.com/omaralbeik)
  - Added `version` to get application version number. by [omaralbeik](https://github.com/omaralbeik)
- **Optional**:
  - Added `nonEmpty` to get the collection only if it is not nill and not empty. by [omaralbeik](https://github.com/omaralbeik)
- **FileManager**:
  - Added `createTemporaryDirectory()` to create a directory for saving temporary files. [#615](https://github.com/SwifterSwift/SwifterSwift/pull/615) by [guykogus](https://github.com/guykogus)
- **UILabel**:
  - Added `init(text:style)` to create a `UILabel` with a text and font style. [#607](https://github.com/SwifterSwift/SwifterSwift/pull/607) by [marcocapano](https://github.com/marcocapano)
- **UIViewController**
  - Added `presentPopover(_:sourcePoint:size:delegate:animated:completion:)` method to quickly present a `UIViewController` as a popover. [#593](https://github.com/SwifterSwift/SwifterSwift/pull/593) by [marcocapano](https://github.com/marcocapano)
- **Sequence**:
  - Added `duplicates()` for getting the duplicated elements in a sequence. [#605](https://github.com/SwifterSwift/SwifterSwift/pull/605) by [dylancfe15](https://github.com/dylancfe15)
- **Date**:
- Added `tomorrow` computed property to get tomorrow's date avoiding calling `adding(_:value:)` function. (Completes PR #578) [#587](https://github.com/SwifterSwift/SwifterSwift/pull/587) by [AlexeiGitH](https://github.com/AlexeiGitH)
  - Added `random(in:)` and `random(in:using:)` to generate random dates using the built-in random functions added to Swift 4.2. [#576](https://github.com/SwifterSwift/SwifterSwift/pull/576/files) by [guykogus](https://github.com/guykogus)
- **Dictionary**:
  - Added `Dictionary[path:]` subscript for deep fetching/setting nested values. [#574](https://github.com/SwifterSwift/SwifterSwift/pull/573) by [@calebkleveter](https://github.com/calebkleveter)
- **UIColor**:
  - Added `whatsApp` color constant to social struct. [#581](https://github.com/SwifterSwift/SwifterSwift/pull/581) by [staffler-xyz](https://github.com/staffler-xyz)
- **DispatchQueue**:
  - Added `isMainQueue` to check if current queue is main queue. [#585](https://github.com/SwifterSwift/SwifterSwift/pull/585) by [jianstm](https://github.com/jianstm)
  - Added `isCurrent(_:)` to check if current queue is specified queue. [#585](https://github.com/SwifterSwift/SwifterSwift/pull/585) by [jianstm](https://github.com/jianstm)
- **BidirectionalCollection**:
  - Added `subscript[offset:]` to get element with negative offset. [#582](https://github.com/SwifterSwift/SwifterSwift/pull/582) by [jianstm](https://github.com/jianstm)
- **BinaryFloatingPointExtensions**:
  - Added `rounded(numberOfDecimalPlaces:rule:)` to get the rounded floating number with the specified number of decimal places. [#583](https://github.com/SwifterSwift/SwifterSwift/pull/583) by [jianstm](https://github.com/jianstm)
- **UIActivity**:
  - Added `ActivityType` constants for iCloud Drive, WhatsApp, LinkedIn and XING. [#580](https://github.com/SwifterSwift/SwifterSwift/pull/580) by [staffler-xyz](https://github.com/staffler-xyz)
- **MKMapView**
  - Added `register(annotationViewWithClass:)`, `dequeueReusableAnnotationView(withClass:)` and `dequeueReusableAnnotationView(withClass:annotation)` methods. [#629](https://github.com/SwifterSwift/SwifterSwift/pull/629) by [staffler-xyz](https://github.com/staffler-xyz)

### Changed

- **Character**:
  - Added more cases to `isEmoji`. by [omaralbeik](https://github.com/omaralbeik)
- **String**:
  - Added more cases to `isEmoji`. by [omaralbeik](https://github.com/omaralbeik)
  - Made `camelize`, `latinize`, `reverse`, `slice`, `trim`, `truncate`, `urlDecode`, `urlEncode`, `padStart`, and `padEnd` return a `discardableResult` self. by [omaralbeik](https://github.com/omaralbeik)
- **Examples**:
  - Replaced Examples.md with Examples.playground to let users try some examples out of extensions. [#596](https://github.com/SwifterSwift/SwifterSwift/pull/596) by [maxxx777](https://github.com/maxxx777)
- **StringProtocol**:
  - Removing Index constraint on `commonSuffix` extension and improving performance and tests. [#606](https://github.com/SwifterSwift/SwifterSwift/pull/606) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).
- **RangeReplaceableCollection**:
  - `Array` extensions `keep(while: )`, `take(while: )` and `skip(while:)` are now `RangeReplaceableCollection` extensions. [#634](https://github.com/SwifterSwift/SwifterSwift/pull/634) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).
- **Date**:
  - Fixed `yesterday` computed property to be calculated using Calendar.date(byAdding:to:) instead of date.addingTimeInterval(-86400) [#641](https://github.com/SwifterSwift/SwifterSwift/pull/641) by [AlexeiGitH](https://github.com/AlexeiGitH).

### Fixed

- **UIImageView**:
  - Fixed `download` function to use `unowned self`. by [omaralbeik](https://github.com/omaralbeik)
- **Installation**:
  - Updated `podspec` to make the group paths in Pods project of SwifterSwift correct with Cocoapods installation. [#590](https://github.com/SwifterSwift/SwifterSwift/pull/590) by [dklinzh](https://github.com/dklinzh)
- **UIImage**:
  - Fixed `cropped(to:)` size checking. [#575](https://github.com/SwifterSwift/SwifterSwift/pull/575) by [ilyahal](https://github.com/ilyahal)
  - Fixed `tint(_ color:, blendMode:)` upside-down image. [#639](https://github.com/SwifterSwift/SwifterSwift/pull/639) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).
- **NSAttributedString**:
  - Fixed `attributes` property crash when the string is empty. [#617](https://github.com/SwifterSwift/SwifterSwift/pull/617) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).
- **Date**:
  - Fixed `yesterday` computed property to be calculated using Calendar.date(byAdding:to:) instead of date.addingTimeInterval(-86400) [#641](https://github.com/SwifterSwift/SwifterSwift/pull/641) by [AlexeiGitH](https://github.com/AlexeiGitH).
  - Fixed `tomorrow` computed property to be calculated using Calendar.date(byAdding:to:) instead of date.addingTimeInterval(86400) [#642](https://github.com/SwifterSwift/SwifterSwift/pull/642) by [AlexeiGitH](https://github.com/AlexeiGitH).

### Removed

- **SwifterSwift**:
  - **Breaking Change** Removed `SwifterSwift` by [omaralbeik](https://github.com/omaralbeik).
- **Collection**:
  - Removed `firstIndex(where: )`, `firstIndex(of:)`, `lastIndex(where: )`, `lastIndex(of:)` which are no longer needed. [#637](https://github.com/SwifterSwift/SwifterSwift/pull/637) by [marcocapano](https://github.com/marcocapano)
- **Date**:
  - Removed `random(from:upTo:)` in favor of `random(in:)` and `random(in:using:)`. [#576](https://github.com/SwifterSwift/SwifterSwift/pull/576) by [guykogus](https://github.com/guykogus)
  - Removed `timeZone` should never have been added because `Date`s are timezone-agnostic. This came to my attention during unit testing over daylight savings changes. [#594](https://github.com/SwifterSwift/SwifterSwift/pull/594) by [guykogus](https://github.com/guykogus)

### CI

- Updated Travis to use the new [`xcode10.2`](https://docs.travis-ci.com/user/reference/osx/#xcode-102) osx_image.
- Added [Fastlane](https://fastlane.tools/) to automate the releasing process for maintainers.

---

# [v4.6.0](https://github.com/SwifterSwift/SwifterSwift/releases/tag/4.6.0)

### Added
- **Date**
  - Added `yesterday` computed property to quickly get yesterday's date to avoid calling `adding(_:value:)` function. [#578](https://github.com/SwifterSwift/SwifterSwift/pull/578) by [AlexeiGitH](https://github.com/AlexeiGitH)
- **UIView**
  - Added `ancestorView(where:)` and `ancestorView(withClass:)` to search for a view in the superviews. [#560](https://github.com/SwifterSwift/SwifterSwift/pull/560) by [overovermind](https://github.com/overovermind)
### Fixed
- Fixed Cocoapods installation setting the correct Swift version

---

# [v4.5.0](https://github.com/SwifterSwift/SwifterSwift/releases/tag/4.5.0)

### Added
- **CGVector**
  - Added `angle` computed property to get the angle of the vector (in radians). [#527](https://github.com/SwifterSwift/SwifterSwift/pull/527) by [moyerr](https://github.com/moyerr)
  - Added `magnitude` computed property to get the magnitude (or length) of the vector. [#527](https://github.com/SwifterSwift/SwifterSwift/pull/527) by [moyerr](https://github.com/moyerr)
  - Added scalar multiplication of CGFloat and CGVector via standard multiplication operator (\*). [#527](https://github.com/SwifterSwift/SwifterSwift/pull/527) by [moyerr](https://github.com/moyerr)
  - Added negation of vectors via prefix (-) operator. [#527](https://github.com/SwifterSwift/SwifterSwift/pull/527) by [moyerr](https://github.com/moyerr)
  - Added `init(angle:magnitude:)` to create vectors based on their angle and magnitude. [#527](https://github.com/SwifterSwift/SwifterSwift/pull/527) by [moyerr](https://github.com/moyerr)
-**UIRefreshControl**:
  - `beginRefresh(in tableView:, animated:, sendAction:)` UIRefreshControl extension to begin refresh programatically. [#525](https://github.com/SwifterSwift/SwifterSwift/pull/525) by [ratulSharker](https://github.com/ratulSharker)
- **Dictionary**:
  - Added `removeValueForRandomKey()` to remove a value for a random key from a dictionary. [#497](https://github.com/SwifterSwift/SwifterSwift/pull/497) by [MaxHaertwig](https://github.com/maxhaertwig).
  - Added `mapKeysAndValues(_:)` to map a `Dictionary` into a `Dictionary` with different (or same) `Key` and `Value` types. [#546](https://github.com/SwifterSwift/SwifterSwift/pull/546) by [guykogus](https://github.com/guykogus)
  - Added `compactMapKeysAndValues(_:)` to map a `Dictionary` into a `Dictionary`, excluding `nil` results, with different (or same) `Key` and `Value` types. [#546](https://github.com/SwifterSwift/SwifterSwift/pull/546) by [guykogus](https://github.com/guykogus)
  - Added `keys(forValue:)` which returns an array of all keys that have the given value in dictionary. [#561](https://github.com/SwifterSwift/SwifterSwift/pull/561) by [mauliksharma](https://github.com/mauliksharma).
- **RangeReplaceableCollection**:
  - Added `removeRandomElement()` to remove a random element from a collection. [#497](https://github.com/SwifterSwift/SwifterSwift/pull/497) by [MaxHaertwig](https://github.com/maxhaertwig).
- **UIView**
  - Added `addGestureRecognizers(_:)` which accepts an array of `UIGestureRecognizer` to add multiple gesture recognizers to a view with one call. [#523](https://github.com/SwifterSwift/SwifterSwift/pull/523) by [moyerr](https://github.com/moyerr)
  - Added `removeGestureRecognizers(_:)` which accepts an array of `UIGestureRecognizer` to remove multiple gesture recognizers from a view with one call. [#523](https://github.com/SwifterSwift/SwifterSwift/pull/523) by [moyerr](https://github.com/moyerr)
- **UIViewController**
  - Added `addChildViewController(_:toContainerView)` to easily add child view controllers. Accepts a `UIViewController` and a `UIView` to add the child's view to. 
  - Added `removeViewAndControllerFromParentViewController()` to remove a `UIViewController` from its parent.
- **NSView**
  - Added `backgroundColor` which allows to change backgroundColor of NSView [#702](https://github.com/SwifterSwift/SwifterSwift/pull/702) by [RomanPodymov](https://github.com/RomanPodymov)
- **UIEdgeInsets**
  - Added  `insetBy(top:)`, `insetBy(left:)`, `insetBy(bottom:)`, `insetBy(right:)`, `insetBy(horizontal:)` and `insetBy(vertical:)` to creates an `UIEdgeInsets` based on current value and adjusted by given offset. [#532](https://github.com/SwifterSwift/SwifterSwift/pull/532) by [VincentSit](https://github.com/VincentSit).
  - Added operators `+` and `+=` to add two insets together in order to extend them. [#557](https://github.com/SwifterSwift/SwifterSwift/pull/557) by [guykogus](https://github.com/guykogus)
- **UILayoutPriority**
  - Added `init(floatLiteral value: Float)` initializer to initialize priority with float literal. [#549](https://github.com/SwifterSwift/SwifterSwift/pull/549) by [diamantidis](https://github.com/diamantidis).
  - Added `init(integerLiteral value: Int)` initializer to initialize priority with integer literal. [#549](https://github.com/SwifterSwift/SwifterSwift/pull/549) by [diamantidis](https://github.com/diamantidis).
- **RangeReplaceableCollection**
  - `init(expression:count:)` to create a collection of a given count initialized with an expression.[#537](https://github.com/SwifterSwift/SwifterSwift/pull/537) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).
- **Optional**:
  - Added `?=` operator to assign to nil optionals only. [#538](https://github.com/SwifterSwift/SwifterSwift/pull/538) by [viktart](https://github.com/viktart)
- **Data**:
  - Added `jsonObject(options:)` to convert a data object into a JSON object. [#542](https://github.com/SwifterSwift/SwifterSwift/pull/542) by [guykogus](https://github.com/guykogus)
- **URL**
  - Added `droppedScheme()` which returns new `URL` that does not have scheme. [#528](https://github.com/SwifterSwift/SwifterSwift/pull/528) by [sammy-sc](https://github.com/sammy-SC)
- **CGSize**
  - Added operator `+` to return the addition of two CGSize.
  - Added operator `+=` to add a CGSize to another.
  - Added operator `-` to return the subtraction of two CGSize.
  - Added operator `-=` to subtract a CGSize from another.
  - Added operator `CGSize * CGSize` to return the multiplication of two CGSize.
  - Added operator `CGSize * CGFloat` and `CGFloat * CGSize` to return the multiplication of a CGSize and a CGFloat value.
  - Added operator `CGSize *= CGSize` to multiply a CGSize with another one.
  - Added operator `CGSize *= CGFloat` to multiply a CGSize with a CGFloat value.
- **UIImage**:
  - Added `rotate(by:)` for generating rotated versions of images. There are 2 versions, one where the angle is passed directly as a `CGFloat` in radians, the other using the `Measurement` class, which is only available for iOS 10+/tvOS 10+/watchOS 3+. [#555](https://github.com/SwifterSwift/SwifterSwift/pull/555) by [guykogus](https://github.com/guykogus)

### Changed
- **RangeReplaceableCollection**:
  - `rotate(by:)` and `rotated(by:)` array extensions now are more generic `RangeReplaceableCollection` extensions. [#512](https://github.com/SwifterSwift/SwifterSwift/pull/512) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).
  - `removeFirst(where:)` array extension now is more generic `RangeReplaceableCollection` extensions. [#516](https://github.com/SwifterSwift/SwifterSwift/pull/516) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).
- **RandomAccessCollection**:
  - `indices(of:)` array extension now is more generic `RandomAccessCollection` extensions. [#516](https://github.com/SwifterSwift/SwifterSwift/pull/516) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).
- **UIView**:
  - Improved performance in `fillToSuperview()` UIView extension. [#540](https://github.com/SwifterSwift/SwifterSwift/pull/540) by [viktart](https://github.com/viktart)

### Fixed
- **UIImage**:
- Fixed `scaled(toWidth:, with orientation:)` and `scaled(toHeight:, with orientation:)` were using image's scale as the scale factor. [#515](https://github.com/SwifterSwift/SwifterSwift/pull/515) by [VincentSit](https://github.com/VincentSit).
- **String**:
  - Used [RFC 5322](http://emailregex.com/) in `isValidEmail`, an email address regex that 99.99% works. [#517](https://github.com/SwifterSwift/SwifterSwift/pull/517) by [Omar Albeik](https://github.com/omaralbeik)
  - Fixed `unicodeArray()` not returning the correct unicode value due to Swift 4.2 new hashing system. [#544](https://github.com/SwifterSwift/SwifterSwift/pull/544) by [Omar Albeik](https://github.com/omaralbeik)

### Deprecated
- **String**:
  - `isEmail` property has been renamed to `isValidEmail`.

### Removed

### Security

---

# [v4.4.0](https://github.com/SwifterSwift/SwifterSwift/releases/tag/4.4.0)

### Added
- **SKNode**:
  - Added `descendants` method to get an array of all descendants of an SKNode. [#490](https://github.com/SwifterSwift/SwifterSwift/pull/490) by [oliviabrown9](https://github.com/oliviabrown9).
- **Comparable**:
  - Added `isBetween(min:max:)` and `clamped(min:max:)` to confirm a value is between bounds or limit it between bounds. [#466](https://github.com/SwifterSwift/SwifterSwift/pull/466) by [freak4pc](https://github.com/freak4pc).
- **UIScrollView**:
  - Added `snapshot` method to get a full snapshot of a rendered scroll view. [#457](https://github.com/SwifterSwift/SwifterSwift/pull/457) by [aliamcami](https://github.com/aliamcami).
- **UIGestureRecognizer**:
  - Added `removeFromView()` method to remove recognizer from the view the recognizer is attached to. [#456](https://github.com/SwifterSwift/SwifterSwift/pull/456) by [mmdock](https://github.com/mmdock)
- **Character**:
  - Added `randomAlphanumeric()` method to generate a random alphanumeric Character. [#462](https://github.com/SwifterSwift/SwifterSwift/pull/462) by [oliviabrown9](https://github.com/oliviabrown9)
- **String**:
  - Added `firstCharacterUppercased()` method to return a string with only the first character uppercased. [#505](https://github.com/SwifterSwift/SwifterSwift/pull/505) by [happiehappie](https://github.com/happiehappie)
- **UITextView**:
  - Added `wrapToContent()` method which will remove insets, offsets, paddings which lies within UITextView's `bounds` and `contenSize`. [#458](https://github.com/SwifterSwift/SwifterSwift/pull/458) by [ratulSharker](https://github.com/ratulSharker)
- **URL**
  - Added `deletingAllPathComponents()` and `deleteAllPathComponents()` to delete all path components from a URL. [#441](https://github.com/SwifterSwift/SwifterSwift/pull/441) by [setoelkahfi](https://github.com/setoelkahfi).
  - Added `queryValue(for:)` to get the value of a query key from a URL. [#467](https://github.com/SwifterSwift/SwifterSwift/pull/467) by [jdisho](https://github.com/jdisho).
- **UITableView**:
  - Added `isValidIndexPath(_:)` method to check whether given IndexPath is valid within UITableView. [#441](https://github.com/SwifterSwift/SwifterSwift/pull/441) by [setoelkahfi](https://github.com/setoelkahfi).
  - Added `safeScrollToRow(at:at:animated:)` method to safely scroll UITableView to the given IndexPath. [#445](https://github.com/SwifterSwift/SwifterSwift/pull/445) by [setoelkahfi](https://github.com/setoelkahfi).
  - Fixed  `lastSection`,  and `indexPathForLastRow`  and  `indexPathForLastRow(inSection: 0)`  methods to get last section, get the lastIndexPath for section 0 if exists and get the lastIndexPath for a given section respectively . 
        [#694](https://github.com/SwifterSwift/SwifterSwift/pull/694) by [mohshin-shah](https://github.com/mohshin-shah).
- **Optional**:
  - Added `isNilOrEmpty` property to check whether an optional is nil or empty collection.
- **UIWindow**:
  - Added `switchRootViewController` method to switch root view controller with animation. [#494](https://github.com/SwifterSwift/SwifterSwift/pull/494) by [omaralbeik](https://github.com/omaralbeik).
- **Sequence**
  - Added `containsDuplicates()` to check whether a sequence contains duplicates. [#496](https://github.com/SwifterSwift/SwifterSwift/pull/496) by [MaxHaertwig](https://github.com/maxhaertwig).
  - Added `single(where:)` to get the only element of a sequence that matches a given condition. [#483](https://github.com/SwifterSwift/SwifterSwift/pull/483) by [andlang](https://github.com/andlang).
- **UIStackView**:
  - Added `addArrangedSubviews(_ views: )` to add an array of views to the end of the arrangedSubviews array. [#501](https://github.com/SwifterSwift/SwifterSwift/pull/501) by [omaralbeik](https://github.com/omaralbeik).
  - Added `removeArrangedSubviews` to remove all views in stack’s array of arranged subviews. [#501](https://github.com/SwifterSwift/SwifterSwift/pull/501) by [omaralbeik](https://github.com/omaralbeik).
- **UIEdgeInsets**
  - Added `horizontal` and `vertical` properties. Also `init(inset:)` and `init(horizontal: vertical:)` initializers for convenience. [#500](https://github.com/SwifterSwift/SwifterSwift/pull/500) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).

### Changed
- **UITableView**:
  - `dequeueReusableCell(withClass:for)`, `dequeueReusableCell(withClass)` now return `UITableViewCell` object, `fatalError(...)` if not found. [#439](https://github.com/SwifterSwift/SwifterSwift/pull/439) by [jdisho](https://github.com/jdisho)
  - `dequeueReusableHeaderFooterView(withClass)`now returns `UITableViewHeaderFooterView` object, `fatalError(...)` if not found. [#439](https://github.com/SwifterSwift/SwifterSwift/pull/439) by [jdisho](https://github.com/jdisho)
- **UICollectionView**:
  - `dequeueReusableCell(withClass:for)` now returns `UICollectionViewCell` object, `fatalError(...)` if not found. [#439](https://github.com/SwifterSwift/SwifterSwift/pull/439) by [jdisho](https://github.com/jdisho)
  - `dequeueReusableSupplementaryView(ofKind:withClass:for)`now returns `UICollectionReusableView` object, `fatalError(...)` if not found. [#439](https://github.com/SwifterSwift/SwifterSwift/pull/439) by [jdisho](https://github.com/jdisho)
- **UIView**:
  - **Breaking Change** `firstResponder` UIView extension is now a function and supports recursive find in the view hierarchy. [#447](https://github.com/SwifterSwift/SwifterSwift/pull/447) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).
- **UIImage**:
  - `scaled(toWidth:, opaque:, with orientation:)` and `scaled(toHeight:, opaque:, with orientation:)` now have an optional parameter for opaqueness. [#446](https://github.com/SwifterSwift/SwifterSwift/pull/446) by [MaxHaertwig](https://github.com/maxhaertwig).
- **Array/Collection/Sequence**
  - The conformance of `sum()`, `last(where:)`, `reject(where:)`, `count(where:)`, `forEachReversed()`, `forEach(where:, body:)`, `accumulate(initial:, next:)`, `filtered(_:, map:)` and `contains(_:)` has been changed from Array to Sequence [#470](https://github.com/SwifterSwift/SwifterSwift/pull/470) by [MaxHaertwig](https://github.com/maxhaertwig).
  - The conformance of `average()`, `firstIndex(where:)`, `lastIndex(where:)`, `indices(where:)`, `forEach(slice:, body:)`, `group(by:)`, `firstIndex(of:)` and `lastIndex(of:)` has been changed from Array to Collection [#470](https://github.com/SwifterSwift/SwifterSwift/pull/470) by [MaxHaertwig](https://github.com/maxhaertwig).
- **Dictionary**
  - The `removeAll(keys:)` changed its paramenter keys to a generic `Sequence` instead of an `Array`. [#482](https://github.com/SwifterSwift/SwifterSwift/pull/482) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).

### Deprecated
- **Array**
  - `groupByKey(keyForValue:)`. [#454](https://github.com/SwifterSwift/SwifterSwift/pull/454) by [@calebkleveter](https://github.com/calebkleveter)

>### Removed

### Fixed
- **UIImage**:
  - `scaled(toWidth:, with orientation:)` and `scaled(toHeight:, with orientation:)` were ignoring an image's scale. [#446](https://github.com/SwifterSwift/SwifterSwift/pull/446) by [MaxHaertwig](https://github.com/maxhaertwig).
  - `init(color:size:)` fixed to ensure that `UIGraphicsEndImageContext` is always called after `UIGraphicsBeginImageContextWithOptions(_:_:_)` [#507](https://github.com/SwifterSwift/SwifterSwift/pull/507) by [guykogus](https://github.com/guykogus)

---

# [v4.3.0](https://github.com/SwifterSwift/SwifterSwift/releases/tag/4.3.0)

### Added
- **Swift 4.1 / Xcode 9.3**
  - Added Swift 4.1 support.
- **Linux Support**:
  - Updated all swift files to use Swift's 4.1 [`# if canImport(module)`](https://github.com/apple/swift-evolution/blob/master/proposals/0075-import-test.md) statement, which brings the project one step closer to first-class Linux support.
- **Sequence**
  - `all()` method moved from ArrayExtensions to SequenceExtensions. [#424](https://github.com/SwifterSwift/SwifterSwift/pull/424) by [n0an](https://github.com/n0an).
  - `none()` method moved from ArrayExtensions to SequenceExtensions. [#424](https://github.com/SwifterSwift/SwifterSwift/pull/424) by [n0an](https://github.com/n0an).
  - Added `any()` method to return if any element of sequence elements conforms to given condition. [#424](https://github.com/SwifterSwift/SwifterSwift/pull/424) by [n0an](https://github.com/n0an).
- **SignedInteger**
  - added `ordinalString(locale:)` method to return string ordinal representation of number in specified locale language. [#434](https://github.com/SwifterSwift/SwifterSwift/pull/434) by [n0an](https://github.com/n0an).
- **SignedNumeric**
  - added `spelledOutString(locale:)` method to return string representation of number spelled in specified locale language. [#434](https://github.com/SwifterSwift/SwifterSwift/pull/434) by [n0an](https://github.com/n0an).
- **String**
  - added computed property `isSpelledCorrectly` to check if the given string has typos or not. [#430](https://github.com/SwifterSwift/SwifterSwift/pull/430) by [n0an](https://github.com/n0an).
  - added `removingPrefix(_ prefix:)` method to remove given prefix from the string. [#430](https://github.com/SwifterSwift/SwifterSwift/pull/430) by [n0an](https://github.com/n0an).
  - added `removingSuffix(_ suffix:)` method to remove given suffix from the string. [#430](https://github.com/SwifterSwift/SwifterSwift/pull/430) by [n0an](https://github.com/n0an).
- **SwiftLint**:
  - reduced the number of disabled rules in _.swiftlint.yml_, please add `disable` and `enable` statements from now on when needed in code.
  - added SwiftLint to test targets to insure code style consistency across the project.

### Changed
- **SignedNumeric**:
  - `asLocaleCurrency` now returns an optional string.
- **Array**:
  - `rotate` method now returns a `discardableResult`.
  - `shuffle` method now returns a `discardableResult`.
  - `sort<T: Comparable>(by:, ascending:)` method now returns a `discardableResult`.
  - `keep` method now returns a `discardableResult`.

### Deprecated
- **UIStoryboard**:
  - `mainStoryboard` property has been renamed to `main`.
- **Array**:
  - deprecated `pop` method in favor of Swift’s `popLast`.
  - deprecated `push` method in favor of Swift’s `append`.
  - deprecated `swap` method in favor of Swift’s `swapAt`.
  - deprecated `item(at index: Int)` method in favor of `subscript(safe:)`.
  - `duplicatesRemoved` method has been renamed to `withoutDuplicates`.
- **Bool**:
  - deprecated `toggled` property, use `!self` instead.
  - deprecated `toggle` method, use `self = !self` instead.

### Fixed
- **String**
   - Fixed UIView extension `addShadow`  was not showing the shadow on view bug. [#420](https://github.com/SwifterSwift/SwifterSwift/pull/420) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).

---

# [v4.2.0](https://github.com/SwifterSwift/SwifterSwift/releases/tag/4.2.0)

### Added
- **MKPolyline**
  - Added `.coordinates` property, to return an array of coordinates for the provided polyline. [#416](https://github.com/SwifterSwift/SwifterSwift/pull/416) by [@freak4pc](https://github.com/freak4pc).
  - Added `init(coordinates:)` initializer, to initialize a `MKPolyline` with a provided array of coordinates. [#416](https://github.com/SwifterSwift/SwifterSwift/pull/416) by [@freak4pc](https://github.com/freak4pc).
- **Optional**
  - Added `.unwrapped(or:)` method, to get the value wrapped by an optional or throw a custom error. [#413](https://github.com/SwifterSwift/SwifterSwift/pull/413) by [@calebkleveter](https://github.com/calebkleveter).
- **UIButton**
  - added `centerTextAndImage(spacing:)` to Center align title text and image on UIButton. [#365](https://github.com/SwifterSwift/SwifterSwift/pull/365) by [@imjog](https://github.com/imjog).
- **Array**
  - added `divided(by:)` to separate an array into 2 arrays based on a predicate. [#367](https://github.com/SwifterSwift/SwifterSwift/pull/367) by [@neoneye](https://github.com/neoneye).
- **Int**
  - added `roundToNearest(n:)` to round an integer to the closest multiple of a given n. [#381](https://github.com/SwifterSwift/SwifterSwift/pull/381) by [MaxHaertwig](https://github.com/maxhaertwig).
- **FileManager**
  - added `jsonFromFile(atPath path:, readingOptions:)` to open a JSON file and serialize its content to a [String, Any]? instance with a provided path. [#390](https://github.com/SwifterSwift/SwifterSwift/pull/390) by [jason-ingenuity](https://github.com/jason-ingenuity).
  - added `jsonFromFile(withFilename filename:, at bundleClass:, readingOptions:)` to open a JSON file and serialize its content to a [String, Any]? instance given a filename. [#390](https://github.com/SwifterSwift/SwifterSwift/pull/390) by [jason-ingenuity](https://github.com/jason-ingenuity).
- **Int**
  - added a more performant and memory efficient `digits` property to return array of integers. [#393](https://github.com/SwifterSwift/SwifterSwift/pull/393) by [FrankKair](https://github.com/FrankKair).
- **StringProtocol**
  - added `commonSuffix(with:, options:)` to get the longest common suffix of the receiver and a given string. [#379](https://github.com/SwifterSwift/SwifterSwift/pull/379) by [MaxHaertwig](https://github.com/maxhaertwig).
- **UICollectionView**
  - added `register(nibWithCellClass:, at bundleClass:)` method to be able to register a cell with custom nib just by its class name. [#386](https://github.com/SwifterSwift/SwifterSwift/pull/386) by [jason-ingenuity](https://github.com/jason-ingenuity).
- **UIFont**
  - added `bold` and `italic` to UIFont. [#382](https://github.com/SwifterSwift/SwifterSwift/pull/382) by [MaxHaertwig](https://github.com/maxhaertwig).
- **UIImage**
  - added `withRoundedCorners(radius:)` to round the corners of an image. The parameter radius is optional, the resulting image will be round if it is unspecified. [#380](https://github.com/SwifterSwift/SwifterSwift/pull/380) by [MaxHaertwig](https://github.com/maxhaertwig).
- **UITableView**
  - added `register(nibWithCellClass:, at bundleClass:)` method to be able to register a cell with custom nib just by its class name. [#386](https://github.com/SwifterSwift/SwifterSwift/pull/386) by [jason-ingenuity](https://github.com/jason-ingenuity).
- **URL**
  - added `queryParmeters` property to get the query parameters from a URL as a dictionary. [#370](https://github.com/SwifterSwift/SwifterSwift/pull/370) by [nathanbacon](https://github.com/nathanbacon).
  - added `thumbnail(fromTime:)` to generate a thumbnail image from a given url. [410](https://github.com/SwifterSwift/SwifterSwift/pull/410) by [BennX](https://github.com/BennX).
- **UserDefaults**
  - added `object(type: with key: usingDecoder decoder:)` method to be able to retrieve Codable objects from UserDefaults. [#388](https://github.com/SwifterSwift/SwifterSwift/pull/388) by [jason-ingenuity](https://github.com/jason-ingenuity).
  - added `set(codable: forKey key: usingEncoder encoder:)` method to be able to store Codable objects from UserDefaults. [#388](https://github.com/SwifterSwift/SwifterSwift/pull/388) by [jason-ingenuity](https://github.com/jason-ingenuity).
- **String**
  - added computed property `isWhitespace` to check if the given string is blank or not.[#363](https://github.com/SwifterSwift/SwifterSwift/pull/363) by [rkp1026](https://github.com/rkp1026).
  - added `isDigits` to check if string only contains digits. [#396](https://github.com/SwifterSwift/SwifterSwift/pull/396) by [seifeet](https://github.com/seifeet).
  - added `toSlug()` to return a slug version of a given string. [397#](https://github.com/SwifterSwift/SwifterSwift/pull/397) by [FrankKair](https://github.com/FrankKair)
- New **UIStackView**
  - added `init(arrangedSubviews:, axis:, spacing:, alignment:, distribution:)` to directly initialize a `UIStackView` with an array of `UIViews`. [#409](https://github.com/SwifterSwift/SwifterSwift/pull/409) by [BennX](https://github.com/BennX)

### Fixed
- **String**
  - Fixed `isNumeric` to check if string is a valid Swift number and added isDigits to check if string only contains digits. [#396](https://github.com/SwifterSwift/SwifterSwift/pull/396) by [seifeet](https://github.com/seifeet).
- **Collection**
  - Fixed `randomItem` crash with empty array. [#405](https://github.com/SwifterSwift/SwifterSwift/pull/405) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).

---

# [v4.1.1](https://github.com/SwifterSwift/SwifterSwift/releases/tag/4.1.1)

### Added
- **NSPredicate**
  - Added operator `!` to return a new predicate formed by NOT-ing a given predicate.
  - Added operator `+` to return a new predicate formed by AND-ing two given predicates.
  - Added operator `|` to return a new predicate formed by OR-ing a two given predicates.
  - Added operator `-` to return a new predicate formed by removing the argument from the second predicate. [#345](https://github.com/SwifterSwift/SwifterSwift/pull/345) by [yycking](https://github.com/yycking).
- **NSAttributedString**
  - Added `attributes` property to get the attributes that apply to a simple NSAttributedString. [#333](https://github.com/SwifterSwift/SwifterSwift/issues/333) by [nathanbacon](https://github.com/nathanbacon).
  - Added `applying(attributes: , toRangesMatching: )`  function to return an attributed string with attributes applied to substrings matching the passed regex pattern by [nathanbacon](https://github.com/nathanbacon).
  - Added `applying(attributes: , toOccurrencesOf: )`  function to return an attributed string with attributes applied to substrings matching the passed string by [nathanbacon](https://github.com/nathanbacon).
- **Array**
  - Added `sort(by: KeyPath)` and `sorted(by: KeyPath)` to sort arrays based on Swift 4 keyPath. [#343](https://github.com/SwifterSwift/SwifterSwift/pull/343) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).
- **String**
  - Added `loremIpsum(ofLength: )` static function to return a lorem ipsum string. [#318](https://github.com/SwifterSwift/SwifterSwift/issues/318) by [omaralbeik](https://github.com/omaralbeik).
- **UIDatePicker**
  - Added `textColor` to get and set the text color of a UIDatePicker. [#328](https://github.com/SwifterSwift/SwifterSwift/issues/328) by [omaralbeik](https://github.com/omaralbeik).
- **NSImage**
  - Added `write(to url: URL, fileType type: _, compressionFactor: _)` to write NSImage to url. [#320](https://github.com/SwifterSwift/SwifterSwift/pulls/320) by [omaralbeik](https://github.com/omaralbeik).
- **Date**
  - Added `random(from: Date, upTo: Date) -> Date` method that return radom date in in the specified range [#336](https://github.com/SwifterSwift/SwifterSwift/pull/336) by [akuzminskyi](https://github.com/akuzminskyi).
  - Added `string(withFormat format: String)` method to get a string from a date with the given format.
  - Added `init?(integerLiteral value: Int)` initializer to create date object from Int literal. [#342](https://github.com/SwifterSwift/SwifterSwift/pull/342) by [n0an](https://github.com/n0an).
- **UIViewController**
  - Added  `showAlert(title: String?, message: String?, buttonTitles: [String]?, highlightedButtonIndex: Int?, completion: ((Int) -> ())?)`  for conveniently displaying an alert from any view controller [#364](https://github.com/SwifterSwift/SwifterSwift/pull/364) by [rkp1026](https://github.com/rkp1026)
### Changed

- **Array**
  - **Breaking Change** `indexes(of:)` has been renamed to `indices(of:)`. [#355](https://github.com/SwifterSwift/SwifterSwift/pull/355) by [Najdan](https://github.com/Najdan)
  - `shuffle` and `shuffled` are no more constrained to Equatable. [#327](https://github.com/SwifterSwift/SwifterSwift/pull/327) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).


### Fixed

- **Int**
  - Fixed where the base in `isPrime()` was not correct. [#323](https://github.com/SwifterSwift/SwifterSwift/pull/323) by [Asura19](https://github.com/Asura19).
- **UINavigationBar**
  - Fixed a bug where makeTransparent was keeping the background color. [#344](https://github.com/SwifterSwift/SwifterSwift/issues/344) by [omaralbeik](https://github.com/omaralbeik).
- **Continuous Integration**
  - Fixed swiftlint warning in `NSImageExtensions`.

---

# v4.1.0

### API Breaking
- **String**
  - `length` is deprecated, use native `count` instead.
  - `slicing(i:)` is deprecated, use `string[safe: i]` instead.
  - `slicing(from: to:)` is deprecated, use `string[safe: start..<end]`.
  - `firstIndex(of:)` is deprecated, use the natives `index(of: Character)` or `range(of: StringProtocol)` instead.
  - `splitted(by:)` is deprecated,  use the native `split(separator: )` instead.
  - `reversed() -> String` is deprecated, use the Swift 4 new `reversed() -> ReversedCollection<String>`. [#305](https://github.com/SwifterSwift/SwifterSwift/pull/305) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida).
- **Date**
  - `weekday` is now a _get-only_ property.
  - `isInThisWeek` has been renamed to `isInCurrentWeek`.
  - `isInThisMonth` has been renamed to `isInCurrentMonth`.
  - `isInThisYear` has been renamed to `isInCurrentYear`.
  - `isInWeekday` has been renamed to `isWorkday`. [#313](https://github.com/SwifterSwift/SwifterSwift/pull/313) by [kaphacius](https://github.com/kaphacius).

### Enhancements
- New **String** extensions
  - added `padStart(length: with:)` and `padEnd(length: with:)` to pad the string to a length on the start or end.
  - added `paddingStart(length: with:)` and `paddingEnd(length: with:)` to return a padding string to a length on the start or end. [#300](https://github.com/SwifterSwift/SwifterSwift/pull/300) by [LucianoPAlmeida](https://github.com/LucianoPAlmeida)
- New **NSImage** extensions
  - added `scaled(toMaxSize:)` to scale image to maximum size with respect to aspect ratio [#291](https://github.com/SwifterSwift/SwifterSwift/pull/291) by [buddax2](https://github.com/buddax2).
- New **Date** extensions
  - added `isWithin(_ value: , _ component: , of date:)` method to check if date is within a number of date components of another date. [295](https://github.com/SwifterSwift/SwifterSwift/pull/295) by [kaphacius](https://github.com/kaphacius).
- New **Optional** extensions
  - added optional assignment operator `??=` [#296](https://github.com/SwifterSwift/SwifterSwift/pull/296) by [buddax2](https://github.com/buddax2).
- New **Calendar** extensions
  - added `numberOfDaysInMonth` to get number of days in the month for a specified date. [#311](https://github.com/SwifterSwift/SwifterSwift/pull/311) by [chaithanyaprathyush](https://github.com/chaithanyaprathyush).
- New **Color** tests
  - added tests for `cgFloatComponents`. [#297](https://github.com/SwifterSwift/SwifterSwift/pull/297) by [stupergenius](https://github.com/stupergenius).
  - added `lighten(by percentage:)` and `darken(by percentage:)` methods to change the hue of a color. [#325](https://github.com/SwifterSwift/SwifterSwift/pull/325) by [oettingerj](https://github.com/oettingerj).
- New **CGColor** tests
  - added tests for `uiColor` and `nsColor`. [#281](https://github.com/SwifterSwift/SwifterSwift/pull/281) by [c1phr](https://github.com/c1phr)
- New **Date** tests
  - added new tests for `isBetween` method. [#289](https://github.com/SwifterSwift/SwifterSwift/pull/289) by [kaphacius](https://github.com/kaphacius).
- Updated Travis image to Xcode 9.1. [#314](https://github.com/SwifterSwift/SwifterSwift/pull/314) by [kaphacius](https://github.com/kaphacius)
- Removed cross references from extensions. [#297](https://github.com/SwifterSwift/SwifterSwift/pull/297) by [stupergenius](https://github.com/stupergenius).
- Updated copyright headers to _Copyright © 2017 SwifterSwift_ everywhere. [#308](https://github.com/SwifterSwift/SwifterSwift/pull/308) by [camdeardorff](https://github.com/camdeardorff).

### Bugfixes
- **Date**
  - complete rewrite for most extensions. [#309](https://github.com/SwifterSwift/SwifterSwift/pull/309) by [omaralbeik](https:github.com/omaralbeik)
  - fixed a bug in `year` where setting year was resetting all smaller components to zero.
  - fixed a bug in `month` where setting month was resetting all smaller components to zero.
  - fixed a bug in `day` where setting day was resetting all smaller components to zero.
  - fixed a bug in `hour` where setting hour was resetting all smaller components to zero.
  - fixed a bug in `minute` where setting minute was resetting all smaller components to zero.
  - fixed a bug in `second` where setting second was resetting all smaller components to zero.
  - added validation to setters for properties above.
  - fixed the above bugs in `changing` method as well.
  - fixed a bug where `quarter` was returning 1 always.
  - Added more tests to edge cases.


# v4.0.1

### API Breaking
N/A

### Enhancements
- **Color**
  - Refactored duplicated code from `UIColorExtensions` and `NSColorExtensions` into `ColorExtensions`. thanks to [SD10](https://github.com/SD10).
  - Refactored duplicated tests from `UIColorExtensionsTests` and `NSColorExtensionsTests` into `ColorExtensionsTests`. [#260](https://github.com/SwifterSwift/SwifterSwift/pull/260) by [LeLuckyVint](https://github.com/LeLuckyVint).
  - Add `cgFloatComponents` to get RGB components for a Color represented as CGFloat numbers (between 0 and 1)
  - `blend` now support NSColor as well.
  - Corrected some typos in README. [#263](https://github.com/SwifterSwift/SwifterSwift/pull/263) by [nick3399](https://github.com/nick3399).
- New **String** extensions
  - Add `localized(comment:)` to returns a localized string, with an optional comment for translators. [#269](https://github.com/SwifterSwift/SwifterSwift/pull/269) by [MaxHaertwig](https://github.com/maxhaertwig).
- New **NSPredicate** extensions
  - Add `not` to returns a new predicate formed by NOT-ing the predicate.
  - Add `and(_ predicate: NSPredicate)` to returns a new predicate formed by AND-ing the argument to the predicate.
  - Add `or(_ predicate: NSPredicate)` to returns a new predicate formed by OR-ing the argument to the predicate.
    [#273](https://github.com/SwifterSwift/SwifterSwift/pull/273) by [MaxHaertwig](https://github.com/maxhaertwig).
- New **UILabel** extensions
  - Add `convenience init(text: String?)` to initialize a UILabel with text. [#271](https://github.com/SwifterSwift/SwifterSwift/pull/271) by [MaxHaertwig](https://github.com/maxhaertwig).
- New **Bool** extensions
  - Add `random` to returns a random boolean value. [#272](https://github.com/SwifterSwift/SwifterSwift/pull/272) by [MaxHaertwig](https://github.com/maxhaertwig).
- **Continuous Integration**
  - Add macOS tests to travis-ci.
  - Add calls to `swiftlint` and `pod lib lint` in Travis [#264](https://github.com/SwifterSwift/SwifterSwift/pull/264) by [calebkleveter](https://github.com/calebkleveter).
- New **SignedNumeric** extensions tests
### Bugfixes
- **Color**
  - Fixed a bug in `rgbComponents`, `shortHexString`, and `shortHexOrHexString` where an exception was raised when color is white or black.
  - Corrected a typo in `rgbComponenets` -> `rgbComponents`



# v4.0.0

### API Breaking
- **Swift4 / Xcode9 🎉**
  - This version brings support for Swift4 and Xcode9. [Looking for Swift3 / 3.2 ?](https://github.com/SwifterSwift/SwifterSwift#looking-for-swift-3)
- **UIColor**
  - `social` has been renamed to `Social` to match Apple Swift guidelines
  - `material` has been renamed to `Material` to match Apple Swift guidelines
  - `flatUI` has been renamed to `FlatUI` to match Apple Swift guidelines
  - `css` has been renamed to `CSS` to match Apple Swift guidelines
- **NSColor**
  - `social` has been renamed to `Social` to match Apple Swift guidelines
  - `material` has been renamed to `Material` to match Apple Swift guidelines
  - `flatUI` has been renamed to `FlatUI` to match Apple Swift guidelines
  - `css` has been renamed to `CSS` to match Apple Swift guidelines

### Enhancements
- **SwiftLint**
  - Added [SwiftLint](https://github.com/realm/SwiftLint) to enforce Swift style and conventions.
- **Danger**
  - Added Danger to continuous integration. [#252](https://github.com/SwifterSwift/SwifterSwift/pull/252) by [SD10](https://github.com/SD10).
- New **Date** extensions
  - added `isBetween(_ startDate: Date, _ endDate: Date, includeBounds: Bool = false) -> Bool` method to check if a date is between two other dates. [#248](https://github.com/SwifterSwift/SwifterSwift/pull/248) by [BennX](https://github.com/BennX).
- New **UIFont** extensions
  - added `monospaced -> UIFont` method to get the current font as monospaced font. [#250](https://github.com/SwifterSwift/SwifterSwift/pull/250) by [BennX](https://github.com/BennX), [Monospaced Font explanation](https://en.wikipedia.org/wiki/Monospaced_font)
- **UITableView**
  - `dequeueReusableCell` now returns an optional
  - `dequeueReusableHeaderFooterView` now returns an optional
- **UICollectionView**
  - `dequeueReusableCell` now returns an optional
  - `dequeueReusableSupplementaryView` now returns an optional
- **UIAlertController**
  - Added `preferredStyle: UIAlertControllerStyle = .alert` to `init from error`.
- **UIStoryboard**
  - `instantiateViewController` now returns an optional.
- **Continuous Integration**
  - Travis now builds `watchOS` target.

### Bugfixes
- **SwifterSwift**
  - `didTakeScreenShot` now returns the notification, make sure to remove listener when you don't need it anymore.


# v3.2.0

### API Breaking
- **Swift 3.2**
  - Code has been updated to Swift 3.2; please use [`v3.1.1`](https://github.com/SwifterSwift/SwifterSwift/releases/tag/3.1.1) if you are still using Swift 3 or Xcode 8
- **SwifterSwift**
  - `userDefaults` is deprecated, use Apple's `UserDefaults.standard` instead.
  - `object(forKey: String)` is deprecated, use Apple's `UserDefaults.standard.object(forKey: _)` instead.
  - `string(forKey: String)` is deprecated, use Apple's `UserDefaults.standard.string(forKey: _)` instead.
  - `integer(forKey: String)` is deprecated, use Apple's `UserDefaults.standard.integer(forKey: _)` instead.
  - `double(forKey: String)` is deprecated, use Apple's `UserDefaults.standard.double(forKey: _)` instead.
  - `data(forKey: String)` is deprecated, use Apple's `UserDefaults.standard.data(forKey: _)` instead.
  - `bool(forKey: String)` is deprecated, use Apple's `UserDefaults.standard.bool(forKey: _)` instead.
  - `array(forKey: String)` is deprecated, use Apple's `UserDefaults.standard.array(forKey: _)` instead.
  - `dictionary(forKey: String)` is deprecated, use Apple's `UserDefaults.standard.dictionary(forKey: _)` instead.
  - `float(forKey: String)` is deprecated, use SwifterSwift's `UserDefaults.standard.float(forKey: _) ` instead.
  - `set(_ value: Any?, forKey: String)` is deprecated, use Apple's `UserDefaults.standard.setValue(_, forKey: _)` instead.
- **Int**
  - Property `romanNumeral` is now a method.
- **String**
  - Property `lines` is now a method.
  - Property `mostCommonCharacter` is now a method.
  - Property `reversed` is now a method.
  - Property `unicodeArray` is now a method.
  - Property `words` is now a method.
  - Property `wordCount` is now a method.
- **UICollectionView**
  - Property `numberOfItems` is now a method.
- **UITableView**
  - Property `numberOfRows` is now a method.
- **UIViewController**
  - Removed `navigationBar` that was causing app to crash, thanks to [drewpitchford](https://github.com/drewpitchford) for reporting in [#243](https://github.com/SwifterSwift/SwifterSwift/issues/243).


### Enhancements
- New **Date** extensions
  - added `secondsSince(_ date: Date)` method to get a number of seconds between two dates.
  - added `minutesSince(_ date: Date)` method to get a number of minutes between two date.
  - added `hoursSince(_ date: Date)` method to get a number of hours between two dates.
  - added `daysSince(_ date: Date)` method to get a number of days between two date.
  - added `isInThisYear` property to check if the date is in the current year.
  - added `isInThisMonth` property to check if the date is in the current month.
  - added `isInThisWeek` property to check if the date is in the current week.
- New **URLRequest** extensions
  - added `init?(urlString: String)` fallible initializer create a URLRequest from URL string.
- New **UIWebView** extensions
  - added `loadURL(_ url: URL)` method to load a URL.
  - added `loadURLString(_ urlString: String)` method to load a URL string.
- New **UserDefaults** extensions
  - added `subscript(key: String)` method to get values from UserDefaults using the [] operator.
  - added `float(forKey key: String)` method to get a Float value from UserDefaults.
  - added `date(forKey key: String)` method to get a Date value from UserDefaults.
- Improved file structre, as in [#236](https://github.com/SwifterSwift/SwifterSwift/issues/236)
- Improved README
  - Removed unnecessary description in Installation section
  - Updated **List of All Extensions** section to match the new file structure.

### Bugfixes
N/A


# v3.1.1

### API Breaking
N/A

### Enhancements
- New **NSAttributedString** extensions
  - added `NSAttributedString + NSAttributedString` operator to return a new appended NSAttributedString.
  - added `NSAttributedString += String` operator to append a string to a NSAttributedString.
  - added `NSAttributedString + String` operator to return a new appended NSAttributedString. [#218](https://github.com/SwifterSwift/SwifterSwift/pull/218) by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)
- New **UIColor** extensions
  - added `flatUI` struct with all Flat UI colors. [#213](https://github.com/SwifterSwift/SwifterSwift/pull/213) by [@tache](https://github.com/tache)
  - added `coreImageColor` property to return CoreImage.CIColor. [#213](https://github.com/SwifterSwift/SwifterSwift/pull/213) by [@tache](https://github.com/tache)
  - added `hsbaComponents` property to get components of hue, saturation, and brightness, and alpha. [#213](https://github.com/SwifterSwift/SwifterSwift/pull/213) by [@tache](https://github.com/tache)
  - added `uInt` property to get components of hue, saturation, and brightness, and alpha as UInt. [#213](https://github.com/SwifterSwift/SwifterSwift/pull/213) by [@tache](https://github.com/tache)
- New **NSColor** extensions
  - added `flatUI` struct with all Flat UI colors. [#213](https://github.com/SwifterSwift/SwifterSwift/pull/213) by [@tache](https://github.com/tache)
- New **UIImage** extensions
  - added `tint()` to get UIImage tinted with color. [#213](https://github.com/SwifterSwift/SwifterSwift/pull/213) by [@tache](https://github.com/tache)
- New **SignedNumber** extensions. [#224](https://github.com/SwifterSwift/SwifterSwift/pull/224) by [@omaralbeik](https://github.com/omaralbeik)
  - moved `abs` from `FloatingPointExtensions` and `IntExtensions`
  - moved `isPositive` from `FloatingPointExtensions` and `IntExtensions`
  - moved `isNegative` from `FloatingPointExtensions` and `IntExtensions`
  - moved `string` from `FloatingPointExtensions` and `IntExtensions`
  - moved `asLocaleCurrency` from `FloatingPointExtensions` and `IntExtensions`
- New **SignedInteger** extensions. [#224](https://github.com/SwifterSwift/SwifterSwift/pull/224) by [@omaralbeik](https://github.com/omaralbeik)
  - moved `isEven` from `IntExtensions`
  - moved `isOdd` from `IntExtensions`
  - moved `digits` from `IntExtensions`
  - moved `digitsCount` from `IntExtensions`
  - moved `timeString` from `IntExtensions`
  - moved `gcd(of n)` from `IntExtensions`
  - moved `lcm(of n)` from `IntExtensions`
- Added `SwifterSwift` module_name to podspecs file to help solving conflicts with other 3rd party libraries. [#226](https://github.com/SwifterSwift/SwifterSwift/pull/226) by [@omaralbeik](https://github.com/omaralbeik)
- Moved missing examples from the old docs. [#216](https://github.com/SwifterSwift/SwifterSwift/pull/216) by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)
- New `Int` extensions
  - added `isPrime()` to check if integer is prime number. [#221](https://github.com/SwifterSwift/SwifterSwift/pull/221) by [@pvtmert](https://github.com/pvtmert)
- Improve sum & average extensions by not relying on reduce. [#225](https://github.com/SwifterSwift/SwifterSwift/pull/225) by [@SD10](https://github.com/SD10)
- New SVG logo in README! by [@omaralbeik](https://github.com/omaralbeik)

### Bugfixes
- Fixed UISlider test by using XCTExpectation ([#209](https://github.com/SwifterSwift/SwifterSwift/issues/209)). [#229](https://github.com/SwifterSwift/SwifterSwift/issues/229). by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)


# v3.1.0

### API Breaking
- **String**
  - `firstCharacter` has been renamed to `firstCharacterAsString`. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `lastCharacter` has been renamed to `lastCharacterAsString`. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `firstCharacter` has been renamed to `firstCharacterAsString`. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `float` has been renamed to `float(locale: Locale = .current)`. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `double` has been renamed to `double(locale: Locale = .current)`. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `subscript(i: Int)` has been renamed to `subscript(safe i: Int)`. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `subscript(range: CountableRange<Int>)` has been renamed to `subscript(safe range: CountableRange<Int>)`. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `subscript(range: ClosedRange<Int>)` has been renamed to `subscript(safe range: ClosedRange<Int>)`. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `replacing(_ substring: String, with newString: String)` is deprecated, use Apple's `replacingOccurrences(of: substring, with: newString)` instead. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `int8` is deprecated, use `Int8(string)` instead. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `int16` is deprecated, use `Int16(string)` instead. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `int32` is deprecated, use `Int32(string)` instead. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `int64` is deprecated, use `Int64(string)` instead. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `float32` is deprecated, use `Float32(string)` instead. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `float64` is deprecated, use `Float64(string)` instead. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)

- **UIColor**
  - `init(hex: Int, transparency: CGFloat = 1)` is now a failable initializer `init?`. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `init(red: Int, green: Int, blue: Int, transparency: CGFloat = 1)` is now a failable initializer `init?`. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `redComponent` is deprecated, use the new `rgbComponenets.red` instead. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `greenComponent` is deprecated, use the new `rgbComponenets.green` instead. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - `blueComponent` is deprecated, use the new `rgbComponenets.blue` instead. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)

### Enhancements
- New **String** extensions
  - added `cgFloat(locale: Locale = .current)` to get CGFloat value from string. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - added `words` to return an array of all words in a string. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - added `wordCount` to get count of words in a string. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
- New **Int** extensions
  - added `countableRange` to get CountableRange 0..<Int. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - added `uInt` to get UInt from Int. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
- New **Array** extensions
  - added `group(size:)` to split in an array of slices of a size. [#199](https://github.com/SwifterSwift/SwifterSwift/pull/199). [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)
  - added `rotated(by:)` to return a new rotated array by the given places. [#207](https://github.com/SwifterSwift/SwifterSwift/pull/207) by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)
  - added `rotate(by:)` to rotate the array by the given places. [#207](https://github.com/SwifterSwift/SwifterSwift/pull/207) by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)
- New **UITextField** extensions
  - added `addPaddingLeftIcon(_ image: UIImage, padding: CGFloat)` to add padding to the left of the textfield rect. [#203](https://github.com/SwifterSwift/SwifterSwift/pull/203) by [@xingfuqiu](https://github.com/xingfuqiu)
  - added `hasValidEmail` to check if textFields text is a valid email format. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
  - added `textType` to set textField for common text types like email addresses & passwords. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
- New **UIColor** extensions
  - added `rgbComponenets` to get RGB components for a UIColor. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
- Added usage examples in documentation for Foundation extensions. [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)
- Moved many duplicated extensions from `DoubleExtensions` and `FloatExtensions` into the new `FloatingPointExtensions`, this makes the code easier to maintain and brings support for other FloatingPoint types like CGFloat, Double32, ... [#208](https://github.com/SwifterSwift/SwifterSwift/pull/208) by [@omaralbeik](https://github.com/omaralbeik)

### Bugfixes
- Fixed XCTAssertNotNil cannot handle optionals. [#188](https://github.com/SwifterSwift/SwifterSwift/issues/188). by [@omaralbeik](https://github.com/omaralbeik)
- Fixed Tests are failing at non-english machine / Bug in String.double [#187](https://github.com/SwifterSwift/SwifterSwift/issues/187). by [@omaralbeik](https://github.com/omaralbeik)


# v3.0.0

### API Breaking

### Enhancements

- Documentation should be greatly improved and up to date now that we are using [Jazzy](https://github.com/realm/jazzy) to auto-generate docs! :tada: [#198](https://github.com/SwifterSwift/SwifterSwift/pull/198) by [@omaralbeik](https://github.com/omaralbeik)

- SwifterSwift now supports subspecs to offer more control over imported extensions: [#198](https://github.com/SwifterSwift/SwifterSwift/pull/198) by [@omaralbeik](https://github.com/omaralbeik)
  - SwifterSwift/Foundation
  - SwifterSwift/UIKit
  - SwifterSwift/Cocoa

- `Array` extensions now have throwing signatures. [#170](https://github.com/SwifterSwift/SwifterSwift/pull/170) by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)

- New **Array** extensions
  - added `groupByKey` to group the elements of the array by key in a dictionary. [#181](https://github.com/SwifterSwift/SwifterSwift/pull/181) by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)
  - added `forEach(slice:body:)` to iterate by specified slice size and call a closure. [#194](https://github.com/SwifterSwift/SwifterSwift/pull/194) by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)
- New **Dictionary** extensions
  - add `count(where:)` to count dictionary elements where the condition returns true. [#193](https://github.com/SwifterSwift/SwifterSwift/pull/193) by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)

- New **String** extensions
  - added `isValidFileUrl` to check if a String is a valid file URL. [#175](https://github.com/SwifterSwift/SwifterSwift/pull/175) by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)
  - added `hasUniqueCharacters()` method to check if string only contains unique characters. [#195](https://github.com/SwifterSwift/SwifterSwift/pull/195) by [@FrankKair](https://github.com/FrankKair)

- New **Data** extensions
  - added `bytes` to return data as an array of bytes. [#171](https://github.com/SwifterSwift/SwifterSwift/pull/171) by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)

- New **UITextField** extensions
  - added `addPaddingLeft` extension to add padding to a UITextField. [#185](https://github.com/SwifterSwift/SwifterSwift/pull/185) by [@SD10](https://github.com/SD10)

### Bugfixes
- Fixes asynchronous `iOS`/`tvOS`/`watchOS` unit tests causing crashes. [#191](https://github.com/SwifterSwift/SwifterSwift/pull/191) by [@LucianoPAlmeida](https://github.com/LucianoPAlmeida)

# v1.6.4

- New **Array** extensions
  - added `removeAll` passing an array of items.
  - added `swap` and `safeSwap` extensions to swap to elements in an array.
  - new `firstIndex` and `lastIndex` that returns the (first or last) index where the condition is true.
  - new `indexes` extension that return indexes where the condition is true.
  - new `all` and `none` that checks if (all or none) of array elements match condition.
  - new `last` extension to find the last element that matches condition.
  - new `reject` extension to filter elements that **not** matches condition.
  - new `count` extension to count elements that match condition.
  - new `forEachReversed` extension to iterate over an array in reverse order.
  - new `accumulate` extension to reduces an array while returning each interim combination.
  - new `forEach` with condition to a filtered interaction over the array.
  - new `keep` extension to keep all elements that in order are until the condition is false.
  - new `take` extension that returns all elements that in order are until the condition is false.
  - new `skip` extension that returns all elements that in order are after the condition is false.
  - new `filtered: map` extension to perform a map and filter operation in just one iteration.
- New **Character** extensions
  - added isLetter & isWhiteSpace extensions
  - new lowercased extension to lower case the character
  - new uppercased extension to upper case the character
- New **Date** extensions
  - new `isInWeekday` extension to check if the date is within a weekday period
- New **Dictionary** extensions
  - new `removeAll` extension to remove the values for all keys in an array.
  - new + operator to merge to dictionaries in a new one and += to merge one dictionary into another.
  - new - operator to get a new dictionary with the values for all keys in an array removed and -= to remove the values for all keys in an array.
- New **String** extensions
  - new `matches` extension to check if the string matches a regex pattern.
- New **Locale** extensions
  - new posix property extension to convenience create the "en_US_POSIX" locale.
- New **CLLocation** extensions
  - new `midLocation` to find the half-way point along a great circle path between relative to another point.
  - new `bearing` to calculate the bearing relative another location.
### Improvements
- Fixes on wrong access  levels for some extensions
- Improve NSAttributedStringExtensions extensions
- Fixes on implementations of some array extensions
- Fixes on some UIButtonExtensions
- Improvements on some Date extensions
- Improvements on some methods signatures based on Swift 3 API guidelines
- Improve code coverage.
- Improvements on documentation headers     

### Testing

This release has drastically increased test coverage: currently 92%.
Areas affected are:

**Foundation**

  - ArrayExtensions tests
  - CharacterExtensions tests
  - DateExtensions tests
  - DictionaryExtensions tests
  - StringExtensions tests
  - LocaleExtensions tests

**UIKit**

  - UIColorExtensions tests
  - UIButtonExtensions tests

**Cocoa**

  - CGSizeExtensions tests
  - CGPointExtensions tests
  - CLLocationExtensions tests

---


# v1.6.3

- New **Character** extensions
  - new * operator (repeat character n amount of times)
  - added isLowercased & isUppercased extensions

- New **UICollectionView** extensions
  - new extensions to register/dequeue cells using UICollectionViewCell class as identifier
  - new extensions to register/dequeue reusable views using UICollectionReusableView class as identifier

- New **UITableView** extensions
  - new extensions to register/dequeue cells using UITableViewCell class as identifier
  - new extensions to register/dequeue header/footer views using UITableViewHeaderFooterView as identifier

- New **UIStoryboard** extensions
  - added extension to `instantiateViewController` with class as identifier
  - added extension get `mainStoryboard`

- New **UIView** extensions
  - added quick getter and setter for frame’s X and Y values

- New **Array** extensions
  - added `safeSwap` method as a fail-safe way to swap to elements in an array

- New **NSView** extensions
  - `borderColor` (IBInspectable)
  - `borderWidth` (IBInspectable)
  - `cornerRadius` (IBInspectable)
  - `height`
  - `shadowColor` (IBInspectable)
  - `shadowOffset` (IBInspectable)
  - `shadowOpacity` (IBInspectable)
  - `shadowRadius` (IBInspectable)
  - `size`
  - `width`
  - `addSubviews(subviews:)`
  - `removeSubviews()`

- New **Optional** extensions
  - `unwrapped(or:)` unwrap an optional or provide default value
  - `run(block:)` block to run if optional unwrapped is not nil

### Improvements
- Improve UIImageView extensions
  - fixes infinite recursive call in `blurred()` method
  - removes superfluous error from `download(url:)` method completion block

- Replace deprecated `M_PI` with `.pi`

- Fixes wrong implementation of -= `CGPoint` operator

- Improve Array extensions
  - properties with O(n) or higher complexity have been changed to methods
  - reduced shuffle method complexity by using Fisher-Yates algorithm and is now completely random
  - `removeDuplicates` renamed to `duplicatesRemoved.`
  - remove generic constraint on `firstIndex(of:)` and `lastIndex(of:)`

- Improve String extensions
- Improve Date extensions
- Improve Data extensions
- Improve Dictionary extensions

### Testing
This release has drastically increased test coverage: currently 88%.
Areas affected are:

**Foundation**

  - CharacterExtensions tests
  - StringExtensions tests
  - ArrayExtensions tests
  - IntExtensions tests
  - DateExtensions tests
  - DataExtensions tests
  - DoubleExtensions tests
  - FloatExtensions tests
  - CGFloatExtensions tests
  - CGPointExtensions tests


**UIKit**

  - UIColorExtensions tests
  - UIAlertControllerExtensions tests
  - UIBarButtonItemExtensions tests
  - UIButtonExtensions tests
  - UITextViewExtensions tests
  - UISegmentedControlExtensions tests
  - UINavigationControllerExtensions tests
  - UINavigationBarExtensions tests
  - UINavigationItemExtensions tests
  - UISliderExtensions tests
  - UITableViewExtensions tests
  - UICollectionViewExtensions tests
  - UIViewControllerExtensions tests
  - UIStoryboardExtensions tests
  - UITextFieldExtensions tests
  - UIViewExtensions tests
  - UIImageExtensions tests


**Cocoa**

  - NSColorExtensions tests
  - NSViewExtensions tests

---

# v1.6.2
- Major bug fixes in DateExtensions.
- New Tests.

---

# v1.6.1
Fixed Cocoapods.

---

# v1.6
This is the biggest update since v1.3!
With over 100 new extensions, improved Cocoa support, new tests, and many minor bug fixes.

## New Extensions
- CGColorExtensions
- NSColorExtensions
- URLExtensions
- StringExtensions
- **length**: Number of characters in string.
- **isValidSchemedUrl**: Check if string is a valid schemed URL.
- UIImageExtensions:
- **original**: UIImage with .alwaysOriginal rendering mode.
- **template**: UIImage with .alwaysTemplate rendering mode.
- UISearchBarExtensions:
- **clear**: Clear text.
- UITextFieldExtensions:
- **clear**: Clear text.

## Improved extensions
- StringExtensions:
- **trimmed**
- **copyToPasteboard**
- **truncated**
- SwifterSwift
- **isInTestFlight**
- UIColorExtensions:
- **shortHexString**
- **complementary**
- **Improved initializers**

## New Tests
- StringExtensionsTests
- NSAttributedStringExtensionsTests
- UIColorExtensionsTests
- DateExtensionsTests
- CharacterExtensionsTests

## CodeCov!
Added project to [CodeCov](codecov.io/gh/SwifterSwift/SwifterSwift) for better code coverage visualization.

---

# v1.4.8
General bug fixes and improvements.

---

# v1.4.6

###watchOS Support:
Thanks to [Paweł Urbanek](https://github.com/pawurb) for his great work adding watchOS target!

---

# v1.4.5

###tvOS Support:
Thanks to [Paweł Urbanek](https://github.com/pawurb) for his great work adding tvOS target!

---

# v1.4.3

###UICollectionViewExtensions:

- Fixed a bug in **indexPathForLastItem**.
- Renamed **indexPathForLastItem(in section: Int)** to **indexPathForLastItem(inSection section: Int)** to match Apple naming conventions

###UITableViewExtensions:

- Fixed a bug in **indexPathForLastRow**.
- Renamed **indexPathForLastRow(in section: Int)** to **indexPathForLastRow(inSection section: Int)** to match Apple naming conventions

##StringExtensions:

- Fixed a bug in **count(of string: String, caseSensitive: Bool)**
- Added **slicing(from i: Int, length: Int)**: Sliced string from a start index with length.
- Added **slice(from i: Int, length: Int)**: Slice given string from a start index with length (if applicable).
- Added **slicing(from start: Int, to end: Int)**: Sliced string from a start index to an end index.
- Added **slice(from start: Int, to end: Int)**: Slice given string from a start index to an end index (if applicable).
- Added **slicing(at i: Int)**: Sliced string from a start index.
- Added **slice(at i: Int)**: Slice given string from a start index (if applicable).

##StringExtensionsTests:

- Added tests for **count(of string: String, caseSensitive: Bool)**
- Added tests for slicing methods

##Contributing:

- Added **Releases Flow**
- Updated **Adding new Extensions**

##Misc:

- Introduced new [**releases Flow**](https://github.com/omaralbeik/SwifterSwift/blob/master/CONTRIBUTING.md#releases-flow)

Thanks to [Paweł Urbanek](https://github.com/pawurb) and [Michael](https://github.com/muescha)

---

# v1.4.2

###CollectionExtensions:

- Added **subscript (safe index: Index)**. Thanks to [Sai Ram Kotha](https://github.com/sairamkotha)

###UIColorExtensions:

- Added **complementary**
- Added **init?(complementaryFor color: UIColor)**

Thanks to [matt](https://github.com/ythecombinator)

###SwifterSwift:

- Added **isInTestFlight**

---

# v1.4.1

###DateExtensions:

- Added **enum DayNameStyle**.
- Added **enum MonthNameStyle**.
- Added **isInYesterday**.
- Added **isInTomorrow**.
- Added **nearestHour**.
- Added **dayName(ofStyle style: DayNameStyle)**.
- Added **monthName(ofStyle style: MonthNameStyle)**.

###UISearchBarExtensions:
- Added **trimmedText**.

###UIColorExtensions:

- Added **cssColors**.
- Added **init?(hexString: String, transparency: CGFloat)**.
- Added **shortHexString**.
- Added **shortHexOrHexString**.

###StringExtensions:

- Added **subscript(i: Int)**.
- Added **subscript(range: CountableRange<Int>)**.
- Added **subscript(range: ClosedRange<Int>)**.

---

# v1.4

- Swift Package Manager support

---

# v1.3.9

- Extension moved to Source directory; tests moved to Tests directory for a cleaner structure

---

# v1.3.8

###CollectionExtensions:
- Added **forEachInParallel**. Thanks to [Siarhei Fiedartsou](https://github.com/SiarheiFedartsou) for contributing.

###TableViewExtensions:
- Added **reloadData(_ completion: () -> Void)**.

###CollectionViewExtensions:
- Added **reloadData(_ completion: () -> Void)**.

###UIButtonExtensions:
- Refactored setForAllStates methods code. Thanks to [Ronan Rodrigo Nunes](https://github.com/ronanrodrigo)

###Misc.
- Fixed typos in README.

---

# v1.3.7

###DateExtensions:

- Changed **nearestHourQuarter** to **nearestQuarterHour**. Thanks to [Robert Nix](https://github.com/rpural) for reporting.
- Updated initializers to be optional.

###UITabBarExtensions:

- fixed selected color in  **setColors** method.

###Tests

- Updated tests. Thanks to [Siarhei Fiedartsou](https://github.com/SiarheiFedartsou) for updating.

---

# v1.3.6

###UIViewExtensions:

- Fixed bugs in **fadeIn**, **fadeOut** and **rotate(byAngle)** methods. Thanks to [bastianschilbe](https://github.com/bastianschilbe) for reporting.
- Removed **isVisible** property since it was causing many problems and not working correctly.
- Added **parentViewController** property to return view's parent view controller.

---

# v1.3.5

### DateExtensions:

Fixed a bug in DateExtensinos where the year was not set correctly. Thanks to [songhailiang](https://github.com/songhailiang) you for reporting this bug.

---

# v1.3.4

### UIViewExtensions:

- **func addConstraints(withFormat: String, views: UIView...)**: Add Visual Format constraints
- **func fillToSuperview()**: Anchor all sides of the view into it's superview
- **func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, topConstant: CGFloat, leftConstant: CGFloat, bottomConstant: CGFloat, rightConstant: CGFloat, widthConstant: CGFloat, heightConstant: CGFloat) -> [NSLayoutConstraint]**: Add anchors from any side of the current view into the specified anchors and returns the newly added constraints.
- **func anchorCenterXToSuperview(withConstant: CGFloat)**: Anchor center X into current view's superview with a constant margin value.
- **anchorCenterYToSuperview(constant: CGFloat)**: Anchor center Y into current view's superview with a constant margin value.
- **func anchorCenterSuperview()**: Anchor center X and Y into current view's superview

### IntExtensions:

- **kFormatted**: String formatted for values over ±1000 (example: 1k, -2k, 100k, 1kk, -5kk..)

Thanks to [Jonathan Bijos](https://github.com/Quaggie) & [zzjzz9266a](https://github.com/zzjzz9266a) for adding new extensions.

---

# v1.3.2

Added [CollectionViewExtensions](https://github.com/omaralbeik/SwifterSwift/wiki/uicollectionview-extensions)

---

# v1.3.1

### ArrayExtensions:

- removed duplicated contains a method
- use of reducing to remove duplicates (Thanks to [sairamkotha](https://github.com/sairamkotha))

---

# v1.3

This version adds **more than 90 new extensions** making it the widest extensions library available online for Swift 3 with **more than 360 properties and methods for more than 35 type**.
This is the biggest update since library launch! We're so excited 🤓

Here are some changes:
- Updated some properties and methods names to follow [Swift API Design Guidelines](https://developer.apple.com/videos/play/wwdc2016/403/).
- Added default values to methods parameters (where possible).
- All units documentation has been re-written in Xcode,
  - Now you see "**SwifterSwift:** " at the beginning of description to know the source of the extension while writing your code.
  - All method parameters and return types have been documented in Xcode as well.
  - All extensions documentation has been re-written in [Wiki](https://github.com/omaralbeik/SwifterSwift/wiki), separating properties from methods in different tables.
- All extensions files re-organized in separate extensions based on type (properties, methods, initializers, ..)
- Fixed some bugs where some extensions were not public.
- New section explaining how to add new extensions in [Contributing Guidelines](https://github.com/omaralbeik/SwifterSwift/blob/master/CONTRIBUTING.md)
- And finally: new logo

---

## v1.2.2

### New Extensions:

- **UIColorExtensions**:
  - **struct material**: get [Google material palette colors](https://material.google.com/style/color.html) with ease

### Updated Extensions:

- **UIColorExtensions**:
  - struct socialColors -> **struct social**

---

## v1.2.1

### New Extensions:

- **ConvenienceExtensions**:
  - **func string(forKey: String)**: Get a string from UserDefaults
  - **func integer(forKey: String)**: Get an integer from UserDefaults
  - **func double(forKey: String)**: Get a double from UserDefaults
  - **func float(forKey: String)**: Get a float from UserDefaults
  - **func data(forKey: String)**: Get a data from UserDefaults
  - **func bool(forKey: String)**: Get a bool from UserDefaults
  - **func array(forKey: String)**: Get an array from UserDefaults
  - **func dictionary(forKey: String)**: Get a dictionary from UserDefaults

- **StringExtensions**:
  - **func toDate(withFormat format: String)**: Return Date value from string of date format (if applicable).
  - **var toURL**: Return URL from string (if applicable).

- **UIAlertControllerExtensions**:
  - **addAction(title, style, isEnabled, handler)**: Add an action to Alert.
  - **addTextField(text, placeholder, editingChangedTarget, editingChangedSelector)**: Add a text field to Alert.

- **UINavigationBarExtensions**:
  - **func setColors(background, text)**: Set Navigation Bar background and text colors.


### Updated Extensions:

- **ConvenienceExtensions**:
  - var deviceHeight -> **var screenHeight**
  - var deviceWidth -> **var screenWidth**

- **ArrayExtensions**:
  - func removeAll(item: Element) -> **func removeAll(_ item: Element))**

- **DateExtensions**:
  - func add(component: Calendar.Component, value: Int) -> **add(_ component: Calendar.Component, value: Int)**
  - func adding(component: Calendar.Component, value: Int) -> **adding(_ component: Calendar.Component, value: Int)**
  - func changing(component: Calendar.Component, value: Int) -> **changing(_ component: Calendar.Component, value: Int)**
  - func isIn(current: Calendar.Component) -> **isInCurrent(_ component: Calendar.Component)**

- **StringExtensions**:
  - func contain(string: String, caseSensitive: Bool) -> **func contain(_ string: String, caseSensitive: Bool)**
  - func lines() -> **var lines**
  - static func random(of length: Int) -> **static func random(ofLength: Int)**
  - func replace(string: String, with: String) -> **func replace(_ substring: String, with: String)**
  - func truncate(to length: Int, trailing: String?) -> **func truncate(toLength: Int, trailing: String?)**
  - func truncated(to length: Int, trailing: String? = "...") -> **func truncated(to length: Int, trailing: String?)**

- **UIButtonExtensions**:
  - func imageForAllStates(image: UIImage) -> **func setImageForAllStates(_ image: UIImage)**
  - func titleColorForAllStates(color: UIColor) -> **func setTitleColorForAllStates(_ color: UIColor)**
  - func titleForAllStates(title: String) -> **func setTitleForAllStates(_ title: String)**


- **UIColorExtensions**:
  - init(netHex:Int) -> **init(hex:Int, transparency: CGFloat = 1)**

- **UIImageExtensions**:
  - func scaledToHeight(height: CGFloat, with orientation: UIImageOrientation?) -> **scaled(toHeight: CGFloat, with orientation: UIImageOrientation?)**
  - func scaledToWidth(width: CGFloat, with orientation: UIImageOrientation?) -> **scaled(toWidth: CGFloat, with orientation: UIImageOrientation?)**

- **UIImageViewExtensions**:
  - func download(fromUrl: String?, contentMode: UIViewContentMode, placeHolder: UIImage?)) -> **download(from: URL?, contentMode: UIViewContentMode, placeHolder: UIImage?, completionHandler: ((UIImage?, Error?) -> Void)?)**

- **UISliderExtensions**:
  - func setValue(value: Float, animated: Bool, duration: TimeInterval, completion: (() -> Void)? = nil) -> **func setValue(_ value: Float, animated: Bool, duration: TimeInterval, completion: (() -> Void)?)**

- **UITableViewExtensions**:
  - var totalRows -> **var numberOfRows**

- **UITextFieldExtensions**:
  - func setPlaceHolderTextColor(color: UIColor) -> **func setPlaceHolderTextColor(_ color: UIColor)**

- **UIViewExtensions**:
  - func loadFromNibNamed(nibNamed: String, bundle : Bundle?) -> **func loadFromNib(named: String, bundle : Bundle?)**

### Removed Extensions:

- **StringExtensions**:
   - var locale

---

## v1.1

UISearchBarExtensions:
- **textField**: Return the text field inside search bar

UITextFieldExtensions:
- **setPlaceHolderTextColor(color)**: Change place holder text color
- **leftViewTintColor**: Left view tint color
- **rightViewTintColor**: Right view tint color

UINavigationItemExtensions:
- **replaceTitle(with image)**: Replace title with an image in naivgation item

UITabBarExtensions:
- **setColors(background, selectedBackground, item, selectedItem)**: Change UITabBar colors

UIImageExtensions:
- **filled(withColor)**: Return image filled with color
- **init(color, size)**: Create image from color and size

UITextViewExtensions:
- **scrollToBotom()**: Scroll to the bottom of text view
- **scrollToTop()**: Scroll to the top of text view

UISegmentedControlExtensions:
- **segmentTitles**: Segments titles
- **segmentImages**: Segments images

UISliderExtensions:
- **setValue(value, animated, duration, completion)**: Set slide bar value with completion handler

UIAlertControllerExtensions:
- **show(vibrate)**: Added optional vibration while presenting the alert

IntExtensions:
- **asLocaleCurrency**: Return string with number and current locale currency

FloatExtensions:
- **asLocaleCurrency**: Return string with number and current locale currency

DoubleExtensions:
- **asLocaleCurrency**: Return string with number and current locale currency

StringExtensions:
- Fixed a bug in toDouble, toFloat, toFloat32, toFloat64 where number is not calculated if not in English

DateExtensions:
- **adding(component, value)**: Return date by adding a component
- **nearestHourQuarter**: Return the nearest quarter to date
- **nearestHalfHour**: Return nearest half hour to date
- **changing(component, value)**: Return date by changing a component
- Fixed a bug in nearestFiveMinutes, nearestTenMinutes where date was always rounded always to next 5, 10 mins

---

## v1.0.4

UILabelExtensions:
- **requiredHeight**: Return required height for a label

UIImageViewExtensions:
- **blur(withStyle: UIBlurEffectStyle)**: Make image view blurry
- **blurred(withStyle: UIBlurEffectStyle)**: Return a blurred version of an image view

UINavigationControllerExtensions:
- **makeTransparent(withTint: UIColor)**: Make navigation controller's navigation bar transparent

UINavigationBarExtensions:
- **makeTransparent(withTint: UIColor)**: Make navigation controller's navigation bar transparent

UITextFieldExtensions:
- **trimmedText**: Return text with no spaces or new lines in beginning and end

UIViewExtensions:
- **addShadow(ofColor, radius, offset, opacity)**: /// Add shadow to view

UIImageExtensions:
- **filled(withColor)**: Return image filled with color

DateExtensions:
- **nearestFiveMinutes**: Return nearest five minutes to date
- **nearestTenMinutes**: Return nearest ten minutes to date

UIViewExtensions:
- **shake**: Completion handler added to shake function
