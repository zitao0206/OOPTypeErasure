//
//  Example05.swift
//  OOPTypeErasure
//
//  Created by lizitao on 2023/4/1.
//

import Foundation

class Example05: CommonOpsProtocol {
    func testCase() {
//        AnyOperable<String>(A())
//        let users : [AnyOperable] = [AnyOperable(<String>A()), AnyOperable(<Int>B())]
//        users.forEach { c in
//            c.customOps("1222")
//        }
        
    }
}

//protocol CommonOperable {
//    associatedtype T
//    func customOps(_ type: T)
//}
//
//struct A<T>: CommonOperable {
//    func customOps(_ type: T)  {
//        print("A: \(type)")
//    }
//}
//
//struct B<T>: CommonOperable {
//    func customOps(_ type: T)  {
//        print("B: \(type)")
//    }
//}
//
//
//class AnyOperable<T>: CommonOperable {
//  
//    private let customOps: (T) -> Void
//    
//    public init<U: CommonOperable>(_ base: U) where U.T == T {
//        customOps = base.customOps(_:)
//    }
//    
//    func customOps(_ type: T) {
//        customOps(type)
//    }
//}
