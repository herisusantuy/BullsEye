//
//  ViewController.swift
//  BullsEye
//
//  Created by Heri Susanto on 20/03/21.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IBOoutlet setting
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    
    //MARK: - Initialize variable
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: - Setting variable when app loaded
        startNewRound()
        
    }
    
    
    //MARK: - IBAction setting
    @IBAction func showAlert(_ sender: UIButton) {
        let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        let alert  = UIAlertController(title: "Hello, World...!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    //MARK: - IBAction section
    @IBAction func sliderMoved(_ sender: UISlider) {
        currentValue = lround(Double(sender.value))
    }
    
    //MARK: - Function section
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    func updateLabels(){
        targetLabel.text = String(targetValue)
    }
}

