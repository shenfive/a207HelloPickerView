//
//  ViewController.swift
//  a207HelloPickerView
//
//  Created by 申潤五 on 2020/8/1.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource {


    @IBOutlet weak var thePickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        thePickerView.dataSource = self
        
    }


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return 5
        case 1:
            return 3
        default:
            return 0
        }
    }
    
    
    
}

