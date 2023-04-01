//
//  Example04.swift
//  OOPTypeErasure
//
//  Created by lizitao on 2023/4/1.
//

import Foundation

class Example04: CommonOpsProtocol {
    func testCase() {
        let values: [AnyPrintable] = [AnyPrintable(5), AnyPrintable(3.14)]
        
        for value in values {
            value.printValue()
        }
    }
} 

protocol Printable {
    func printValue()
}

extension Int: Printable {
    func printValue() {
        print("The integer value is \(self)")
    }
}

extension Double: Printable {
    func printValue() {
        print("The double value is \(self)")
    }
}

struct AnyPrintable {
    private let printFunction: () -> Void

    init<T: Printable>(_ printable: T) {
        printFunction = printable.printValue
    }

    func printValue() {
        printFunction()
    }
} 
