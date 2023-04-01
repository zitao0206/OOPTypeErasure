//
//  Example02.swift
//  OOPTypeErasure
//
//  Created by zitao0206 on 2023/4/1.
//

import UIKit
import SwiftUI

class Example02: CommonOpsProtocol {
    func testCase() {
        
    }
}

//struct CustomA: View {
//    var body: some View {
//        Text("A")
//    }
//}
//
//struct CustomB: View {
//    var body: some View {
//        Text("B")
//    }
//}

//class BaseViewController: UIViewController {
//    func loadCustomView() -> AnyView {
//        fatalError("loadCustomView() has not been implemented")
//    }
//}
//
//class SubViewControllerA: BaseViewController {
//    override func loadCustomView() -> AnyView {
//        return AnyView(CustomA())
//    }
//}
//
//class SubViewControllerB: BaseViewController {
//    override func loadCustomView() -> AnyView {
//        return AnyView(CustomB())
//    }
//}
