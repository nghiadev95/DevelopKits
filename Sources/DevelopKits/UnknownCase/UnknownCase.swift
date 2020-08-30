//
//  UnknownCase.swift
//
//
//  Created by Nguyen Nghia on 8/30/20.
//

/// Source: https://medium.com/macoclock/omg-a-new-enum-case-e5f93611114

import Foundation

/// Example
// enum AcceptType: String, Decodable, UnknownCase {
//    static let unknownCase: AcceptType = .unknown
//
//    case json = "application/json"
//    case unknown
// }

public protocol UnknownCase: RawRepresentable, CaseIterable where RawValue: Equatable & Decodable {
    static var unknownCase: Self { get }
}

public extension UnknownCase {
    init(rawValue: RawValue) {
        let value = Self.allCases.first { $0.rawValue == rawValue }
        self = value ?? Self.unknownCase
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Self(rawValue: rawValue)
    }
}
