//
//  ViewController.swift
//  BullsEye
//
//  Created by Heri Susanto on 20/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert(_ sender: UIButton) {
        let message = "The value of the slider is: \(currentValue)"
        let alert  = UIAlertController(title: "Hello, World...!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        currentValue = lround(Double(sender.value))
    }
}

