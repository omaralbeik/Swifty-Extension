// NSDecimalNumberExtensions.swift - Copyright 2021 SwifterSwift

#if canImport(Foundation)
import Foundation

public extension NSDecimalNumber: Comparable {
    // https://gist.github.com/mattt/1ed12090d7c89f36fd28
}

// MARK: - Methods

/// SwifterSwift: Returns bool value indicating if the two 'NSDecimalNumber's are equal.
public func ==(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool {
  return lhs.compare(rhs) == .orderedSame
}

/// SwifterSwift: Returns bool value indicating if the left side 'NSDecimalNumber' is less than the one on the right side.
public func <(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool {
  return lhs.compare(rhs) == .orderedAscending
}

/// SwifterSwift: Returns an 'NSDecimalNumber' equal to the negation of the given operand.
public prefix func -(value: NSDecimalNumber) -> NSDecimalNumber {
  return value.multiplying(by: NSDecimalNumber(mantissa: 1, exponent: 0, isNegative: true))
}

/// SwifterSwift: Returns an 'NSDecimalNumber' equal to the sum of the two operands.
public func +(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
  return lhs.adding(rhs)
}

/// SwifterSwift: Returns an 'NSDecimalNumber' equal to the differentiation result of the two operands.
public func -(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
  return lhs.subtracting(rhs)
}

/// SwifterSwift: Returns an 'NSDecimalNumber' equal to the product of the two operands.
public func *(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
  return lhs.multiplying(by: rhs)
}

/// SwifterSwift: Returns an 'NSDecimalNumber' equal to the division result of the two operands.
public func /(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
  return lhs.dividing(by: rhs)
}

/// SwifterSwift: Returns an 'NSDecimalNumber' equal to the first operand, raised to the second operand power.
public func ^(lhs: NSDecimalNumber, rhs: Int) -> NSDecimalNumber {
  return lhs.raising(toPower: rhs)
}
