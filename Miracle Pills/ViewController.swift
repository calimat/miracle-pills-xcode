//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Ricardo Herrera Petit on 5/22/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryTxtFld: UITextField!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var zipCodeTxtField: UITextField!
    let states = ["Alaska", "Arkansas", "Alabama","California","Maine","New York"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func enableViews(enabled : Bool)
    {
        statePicker.isHidden = !enabled
        countryLbl.isHidden = enabled
        countryTxtFld.isHidden = enabled
        zipCodeLbl.isHidden = enabled
        zipCodeTxtField.isHidden = enabled
    }
    

    @IBAction func stateBtnPressed(_ sender: Any) {
        enableViews(enabled: true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        enableViews(enabled: false)
    }

}

