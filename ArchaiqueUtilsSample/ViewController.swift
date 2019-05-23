//
//  ViewController.swift
//  ArchaiqueUtilsSample
//
//  Created by shiuchi on 2019/05/23.
//  Copyright © 2019 shiuchi. All rights reserved.
//

import UIKit
import ArchaiqueUtils

class ViewController: UIViewController, ClassNameOutputtable {

    override func viewDidLoad() {
        super.viewDidLoad()
        Logger.logLevel = true
        log("Hello")
        
        print(className)
        
        let hoge = Hoge()
        print(hoge.className)
    }


}

struct Hoge: ClassNameOutputtable {
    
}
