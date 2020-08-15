//
//  NSObject.swift
//  
//
//  Created by Tien Nguyen on 4/24/20.
//

import Foundation

public extension NSObject {
    class var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }

    var className: String {
        return NSStringFromClass(type(of: self)).components(separatedBy: ".").last!
    }
}
