//
//  String+Extension.swift
//  Alamofire
//
//  Created by Joey on 27/11/2017.
//

import Foundation

public extension String {
    public func date(with format: String = "yyyy-MM-dd hh:mm:ss") -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.date(from: self)
    }
}

public extension Optional where Wrapped == String {
    public var isNilOrEmpty: Bool {
        switch self {
        case .none:
            return true
        case .some(let value):
            return value.isEmpty
        }
    }
    
    public var isNotNilNotEmpty: Bool {
        return !isNilOrEmpty
    }
}