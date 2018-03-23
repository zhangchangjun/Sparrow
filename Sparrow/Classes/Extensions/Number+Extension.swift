//
//  Number+Extension.swift
//  Alamofire
//
//  Created by Joey on 23/03/2018.
//

import Foundation

public extension Double {
    public func round(to:Int = 2) -> Double {
        let divisor = pow(10.0, Double(to))
        return (self * divisor).rounded() / divisor
    }
}


public extension BinaryInteger {
    public var degreesToRadians: CGFloat { return CGFloat(Int(self)) * .pi / 180 }
}

public extension FloatingPoint {
    public var degreesToRadians: Self { return self * .pi / 180 }
    public var radiansToDegrees: Self { return self * 180 / .pi }
}

