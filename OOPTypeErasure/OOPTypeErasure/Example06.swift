//
//  Example06.swift
//  OOPTypeErasure
//
//  Created by lizitao on 2023/4/1.
//

import Foundation

class Example06: CommonOpsProtocol {
    func testCase() {
     
        let users : [AnyOperable] = [AnyOperable(A()), AnyOperable(B())]
        users.forEach { c in
            c.customOps()
        }
        
        AnyCommonOperable(A())
        
    }
}

protocol CommonOperable {
    func customOps()
}

struct A: CommonOperable {
    func customOps()  {
        print("A")
    }
}

struct B: CommonOperable {
    func customOps()  {
        print("B")
    }
}

struct AnyOperable: CommonOperable {
  
    private let customOperable: () -> Void
    
    public init<T: CommonOperable>(_ operable: T) {
        customOperable = operable.customOps
    }
    
    func customOps() {
        customOperable()
    }
}

struct AnyCommonOperable<T: CommonOperable>: CommonOperable {
    private let customOpsClosure: () -> Void
    
    init(_ operable: T) {
        customOpsClosure = operable.customOps
    }
    
    func customOps() {
        customOpsClosure()
    }
}

