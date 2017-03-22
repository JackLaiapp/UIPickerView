//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by MyMac on 2017/3/22.
//  Copyright © 2017年 Jack Lai. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet var starPickerView: UIPickerView!
    @IBOutlet var showLabel: UILabel!
    
    var star = ["水瓶座","雙魚座","牡羊座","金牛座","雙子座","巨蟹座","獅子座","處女座","天秤座","天蠍座","射手座","魔羯座"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return star.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return star[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch star[row] {
            
        case "水瓶座":
            
            showLabel.text = "問ＰＥＴＥＲ"
            
        case "雙魚座":
            
            showLabel.text = "02/19 ~ 03/20"
            
        case "牡羊座":
            
            showLabel.text = "問我老婆"
            
        case "金牛座":
            
            showLabel.text = "04/20 ~ 05/20"
            
        case "雙子座":
            
            showLabel.text = "05/21 ~ 06/21"
            
        case "巨蟹座":
            
            showLabel.text = "問我"
            
        case "獅子座":
            
            showLabel.text = "07/23 ~ 08/22"
            
        case "處女座":
            
            showLabel.text = "08/23 ~ 09/22"
            
        case "天秤座":
            
            showLabel.text = "09/23 ~ 10/23"
            
        case "天蠍座":
            
            showLabel.text = "問我女兒"
            
        case "射手座":
            
            showLabel.text = "問ＫＩＫＩ"
            
        case "魔羯座":
            
            showLabel.text = "12/22 ~ 01/19"
            
        default:
            
            showLabel.text = "問ＰＥＴＥＲ"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        starPickerView.dataSource = self
        starPickerView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

