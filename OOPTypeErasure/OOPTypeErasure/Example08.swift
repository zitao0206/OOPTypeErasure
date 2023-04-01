//
//  Example08.swift
//  OOPTypeErasure
//
//  Created by lizitao on 2023/4/1.
//

import Foundation

class Example08: CommonOpsProtocol {
    
    func testCase() {
        let arr = [1, 2, 3, 4, 5]
        let anyArr = MyAnySequence(arr)
        for element in anyArr {
            print(element)
        }

        let dic = [1:"A",2:"B"]
        let anyDic = MyAnySequence(dic)

        for element in anyDic {
            print(element)
        }
        
        let anyArr1 = YourAnySequence(arr)
        for element in anyArr1 {
            print(element)
        }

        let anyDic1 = YourAnySequence(dic)

        for element in anyDic1 {
            print(element)
        }

    }
}

public struct YourAnySequence<Element>: Sequence {
    private let _makeIterator: () -> AnyIterator<Element>

    public init<S: Sequence>(_ base: S) where S.Element == Element {
        _makeIterator = { AnyIterator(base.makeIterator()) }
    }

    public func makeIterator() -> AnyIterator<Element> {
        _makeIterator()
    }
}


public struct MyAnySequence<Element>: Sequence {
    private let box: AnySequenceBoxBase<Element>

    public init<S: Sequence>(_ base: S) where S.Element == Element {
        self.box = AnySequenceBox(base)
    }

    public func makeIterator() -> AnyIterator<Element> {
        box.makeIterator()
    }
}

private class AnySequenceBoxBase<Element> {
    func makeIterator() -> AnyIterator<Element> {
        fatalError("abstract method")
    }
}

private final class AnySequenceBox<Seq: Sequence>: AnySequenceBoxBase<Seq.Element> {
    typealias Element = Seq.Element

    private let _base: Seq

    init(_ base: Seq) {
        self._base = base
    }

    override func makeIterator() -> AnyIterator<Element> {
        AnyIterator(_base.makeIterator())
    }
}

