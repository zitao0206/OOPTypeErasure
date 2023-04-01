//
//  Example03.swift
//  OOPTypeErasure
//
//  Created by zitao0206 on 2023/4/1.
//

import UIKit
import SwiftUI

class Example03: CommonOpsProtocol {
    func testCase() {
        
    }
}

protocol CustomView {
    associatedtype Body: View
    func makeBody() -> Self.Body
}

extension View where Self: CustomView {
    func makeView() -> some View {
        makeBody()
    }
}

struct CustomA: CustomView {
    var body: some View {
        Text("CustomA")
    }

    func makeBody() -> some View {
        body
    }
}

struct CustomB: CustomView {
    var body: some View {
        Text("CustomB")
    }

    func makeBody() -> some View {
        body
    }
}

struct AnyCustomView {
    private let makeViewFunction: () -> AnyView

    init<T: CustomView>(_ customView: T) {
        makeViewFunction = { AnyView(customView.makeBody()) }
    }

    func makeView() -> AnyView {
        makeViewFunction()
    }
}

class BaseViewController: UIViewController {
    func loadCustomView() -> AnyCustomView {
        fatalError("loadCustomView() has not been implemented")
    }
}

class SubViewControllerA: BaseViewController {
    override func loadCustomView() -> AnyCustomView {
        return AnyCustomView(CustomA())
    }
}

class SubViewControllerB: BaseViewController {
    override func loadCustomView() -> AnyCustomView {
        return AnyCustomView(CustomB())
    }
}
