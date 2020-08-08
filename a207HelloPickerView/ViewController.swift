//
//  ViewController.swift
//  a207HelloPickerView
//
//  Created by 申潤五 on 2020/8/1.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var thePickerView: UIPickerView!
    
    var astrological = ["請選擇你的星座","白羊宮","金牛宮","雙子宮","巨蟹宮","獅子宮","處女宮","天秤宮","天蠍宮","射手宮","摩羯宮","水瓶宮","雙魚宮"]
    var bloudType = ["請選擇你的血型","A","B","O","AB"]
    var selectedPageOne = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thePickerView.dataSource = self
        thePickerView.delegate = self
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "goPage2":
            if let nextVC = segue.destination as? Page2ViewController{
                nextVC.sorcePage = self
            }
        default:
            break
        }
    }
    
    //MARK: PickerView Delegate & DataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return bloudType.count
        case 1:
            return astrological.count
        default:
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return bloudType[row]
        case 1:
            return astrological[row]
        default:
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedPageOne = bloudType[pickerView.selectedRow(inComponent: 0)]
            + astrological[pickerView.selectedRow(inComponent: 1)]
        
        if pickerView.selectedRow(inComponent: 0) != 0
            && pickerView.selectedRow(inComponent: 1) != 0 {
            performSegue(withIdentifier: "goPage2", sender: nil)
        }
    }
    
    
    
}


