//
//  ViewController.swift
//  OOPTypeErasure
//
//  Created by zitao0206 on 2023/4/1.
//

import UIKit
import SwiftUI

protocol CommonOpsProtocol {
   mutating func testCase()
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let ex04 = Example04()
//        ex04.testCase()
//        
//        let ex05 = Example05()
//        ex05.testCase()
//        
//        let ex06 = Example06()
//        ex06.testCase()
//        
//        let ex07 = Example07()
//        ex07.testCase()
        
        let ex08 = Example08()
        ex08.testCase()
    }
}



