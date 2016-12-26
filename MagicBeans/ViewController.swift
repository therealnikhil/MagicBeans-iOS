//
//  ViewController.swift
//  MagicBeans
//
//  Created by Nikhil Nandkumar on 12/26/16.
//  Copyright © 2016 Nikhil Nandkumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var chooseStateButton: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var zipCodeText: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var successLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressText: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
        statePicker.isHidden = true
        successImage.isHidden = true
        successLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chooseStatePressed(_ sender: Any) {
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeText.isHidden = true
        buyButton.isHidden = true
        statePicker.isHidden = false
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
        chooseStateButton.setTitle(self.states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryText.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeText.isHidden = false
        buyButton.isHidden = false
    }

    @IBAction func buyButtonPressed(_ sender: Any) {
        nameLabel.isHidden = true
        nameText.isHidden = true
        addressLabel.isHidden = true
        addressText.isHidden = true
        cityLabel.isHidden = true
        cityText.isHidden = true
        stateLabel.isHidden = true
        chooseStateButton.isHidden = true
        statePicker.isHidden = true
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeText.isHidden = true
        buyButton.isHidden = true
        successImage.isHidden = false
        successLabel.isHidden = false
    }
}

