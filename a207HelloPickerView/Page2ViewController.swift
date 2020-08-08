//
//  Page2ViewController.swift
//  a207HelloPickerView
//
//  Created by 申潤五 on 2020/8/8.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController {

    @IBOutlet weak var showLabel: UILabel!
    
    var sorcePage:ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showLabel.text = sorcePage.selectedPageOne
    }


}
