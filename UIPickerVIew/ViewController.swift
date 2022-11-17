//
//  ViewController.swift
//  UIPickerVIew
//
//  Created by Marcelo Sampaio on 04/08/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    

    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()        
    }
    
    // MARK: - Picker DataSource and Delegate
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        10
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return String(row)
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {

        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 48, height: 48))

        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 48, height: 48))
        if row % 2 > 0 {
            imageView.image = UIImage(named:"image1")
        }else{
            imageView.image = UIImage(named:"Image2")
        }
        
        
        myView.addSubview(imageView)

        return myView
    }
}

