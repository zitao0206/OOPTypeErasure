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
        
        let ex04 = Example04()
        ex04.testCase()
    }
}



