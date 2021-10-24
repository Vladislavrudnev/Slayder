//
//  ViewController.swift
//  Slayder
//
//  Created by владислав Руднев on 24.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var calorView: UIView!
    
    @IBOutlet weak var redCalorSlayder: UISlider!{
        didSet{
            redCalorSlayder.tintColor = UIColor.red
        }
    }
    
    @IBOutlet weak var greenCalorSlayder: UISlider!{
        didSet{
            greenCalorSlayder.tintColor = UIColor.green
        }}
    @IBOutlet weak var blueCalorSlayder: UISlider!{
        didSet{
            blueCalorSlayder.tintColor = UIColor.blue
        }}
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    @IBAction func actionSlayder(_ sender: Any) {
        label1.text = String(redCalorSlayder.value)
        label2.text = String(greenCalorSlayder.value)
        label3.text = String(blueCalorSlayder.value)
        
        calorView.backgroundColor = UIColor(red: CGFloat(redCalorSlayder.value), green: CGFloat(greenCalorSlayder.value), blue: CGFloat(blueCalorSlayder.value), alpha: 1)
    }
    
}

