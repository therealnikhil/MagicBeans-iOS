//
//  ViewController.swift
//  MagicBeans
//
//  Created by Nikhil Nandkumar on 12/26/16.
//  Copyright © 2016 Nikhil Nandkumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var magicBeansImage: UIImageView!
    @IBOutlet weak var chooseStateButton: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var dividerView: UIView!
    
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
        
        magicBeansImage.frame.size.height = view.frame.size.height / 12
        magicBeansImage.frame.size.width = view.frame.size.height / 12
    }
    
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(self.deviceRotated), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
        self.deviceRotated()
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
    
    func deviceRotated() {
        if UIDevice.current.orientation.isPortrait {
            successImage.frame = CGRect(x: view.frame.midX - 120, y: dividerView.frame.origin.y + ((view.frame.size.height - dividerView.frame.origin.y) / 2) - 130, width: 240, height: 196)
            successLabel.frame = CGRect(x: view.frame.midX - 90, y: successImage.frame.origin.y + successImage.frame.size.height + 8, width: 180, height: 48)
        }
        if UIDevice.current.orientation.isLandscape {
            successImage.frame = CGRect(x: view.frame.midX - 60, y: dividerView.frame.origin.y + ((view.frame.size.height - dividerView.frame.origin.y) / 2) - 58, width: 120, height: 98)
            successLabel.frame = CGRect(x: view.frame.midX - 45, y: successImage.frame.origin.y + successImage.frame.size.height + 4, width: 90, height: 24)
        }
    }
}

