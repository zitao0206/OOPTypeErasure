//
//  Example01.swift
//  OOPTypeErasure
//
//  Created by zitao0206 on 2023/4/1.
//

import UIKit
import SwiftUI

class Example01: CommonOpsProtocol {
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

//class BaseViewController<T: View>: UIViewController {
//    func loadCustomView() -> T {
//        fatalError("loadCustomView() has not been implemented")
//    }
//}
//
//class SubViewControllerA: BaseViewController<CustomA> {
//    override func loadCustomView() -> CustomA {
//        return CustomA()
//    }
//}
//
//class SubViewControllerB: BaseViewController<CustomB> {
//    override func loadCustomView() -> CustomB {
//        return CustomB()
//    }
//}
