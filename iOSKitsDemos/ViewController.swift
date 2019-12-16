//
//  ViewController.swift
//  iOSKitsDemos
//
//  Created by Nghia Nguyen on 12/16/19.
//  Copyright © 2019 Nghia Nguyen. All rights reserved.
//

import UIKit
import iOSKits

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LoggingKit.shared.writeToFile(filename: nil, content: "Hello - \(Date())")
    }
}
