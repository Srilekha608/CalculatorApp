//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Janagam,Srilekha on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var DisplayLabelOutlet: UILabel!
    
    var operand1:Double = -1.1;
    var operand2:Double = -1.1;
    var operand3:Double = -1.1;
    var result1:Character = " ";
    var result2:Character = " ";
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Button1(_ sender: UIButton) {
        DisplayLabelOutlet.text = DisplayLabelOutlet.text! + "1"
        if(operand1 == -1.1)
        {
            operand1 = 1
        }
        else{
            operand2 = 1
            
        }
    }
    
    @IBAction func Button2(_ sender: UIButton) {
        DisplayLabelOutlet.text = DisplayLabelOutlet.text! + "2"
        if(operand2 == -1.1)
        {
            operand2 = 2
        }
        else{
            operand1 = 2
            
        }
    }
    
    
    
    @IBAction func Button3(_ sender: Any) {
        
        DisplayLabelOutlet.text = DisplayLabelOutlet.text! + "3"
        if(operand2 == -1.1)
        {
            operand3 = 3
        }
        else{
            operand1 = 2
            
        }
    }
    
    @IBAction func SubButton(_ sender: Any) {
        DisplayLabelOutlet.text = DisplayLabelOutlet.text! + "-"
        if( result1 == " ")
        {
            result1 = "-"
        }
    }
    
    
    @IBAction func AddButtton(_ sender: Any) {
        DisplayLabelOutlet.text = DisplayLabelOutlet.text! + "+"
        if( result1 == " ")
        {
            result1 = "+"
        }
        
    }
    @IBAction func EqualButton(_ sender: Any) {
        DisplayLabelOutlet.text = DisplayLabelOutlet.text! + "="
        if(result1 == "+")
        {
            DisplayLabelOutlet.text = "\(operand1+operand2)"
        }else{
            DisplayLabelOutlet.text = "\(operand1-operand2)"
            
        }
    }
    
}

