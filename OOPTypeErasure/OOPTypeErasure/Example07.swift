//
//  Example07.swift
//  OOPTypeErasure
//
//  Created by lizitao on 2023/4/1.
//

import Foundation
import SwiftUI
class Example07: CommonOpsProtocol {
    func testCase() {
     
        let myViewA = MyAnyView(MyCustomViewA())
        let myViewB = MyAnyView(MyCustomViewB())
        
    }
}

struct MyCustomViewA: View {
    var body: some View {
        Text("A")
    }
}

struct MyCustomViewB: View {
    var body: some View {
        Text("B")
    }
}

public struct MyAnyView: View {
    private let box: AnyViewBoxBase
    
    public init<V: View>(_ view: V) {
        box = AnyViewBox(view)
    }
    
    public var body: some View {
        box.view
    }
}

private protocol AnyViewBoxBase {
    var view: MyAnyView { get }
}

private final class AnyViewBox<V: View>: AnyViewBoxBase {
    let view: MyAnyView
    
    init(_ view: V) {
        self.view = MyAnyView(view)
    }
}
