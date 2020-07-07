//
//  ViewController.swift
//  pres
//
//  Created by Stepa on 07.07.2020.
//  Copyright © 2020 Stepa Kozhevnikov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{


    @IBOutlet weak var service: UIPickerView!
    
    @IBOutlet weak var notification: UILabel!
    var serviceData:[[String]] = [[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        service.delegate = self
        service.dataSource = self
        
        serviceData = [["Мойка", "12:00"],
            ["Химчистка", "13:00"]]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return serviceData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return serviceData[row][component]
    }
    @IBAction func register(_ sender: UIButton) {
        let text1 = serviceData[service.selectedRow(inComponent: 0)][0]
        let text2 = serviceData[service.selectedRow(inComponent: 1)][1]
        notification.text = text1 + "  " + text2
    }
}


