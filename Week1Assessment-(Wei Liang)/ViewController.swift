//
//  ViewController.swift
//  Week1Assessment-(Wei Liang)
//
//  Created by Tan Wei Liang on 11/08/2017.
//  Copyright © 2017 TWL. All rights reserved.
//

import UIKit

// if let or guard let both your textfield
// switch your textfield to INT
// make a addition function - number 1 + number 2
// conditional - if let addition == 999, != then don't run or show alert. 


class ViewController: UIViewController {
    
    @IBOutlet weak var inputText1: UITextField!
    @IBOutlet weak var inputText2: UITextField!
    @IBOutlet weak var resultBar: UILabel!
    var number1 : Int = 0
    var number2 : Int = 0
    var ans : String = ""
    
    @IBAction func webView(_ sender: Any) {
        if resultBar.text == String(999) {

            performSegue(withIdentifier: "openWeb", sender: self)
        } else  {return}
    }
   
    @IBAction func addition(_ sender: Any) {
        guard let number1 = inputText1.text else {return}
        guard let number2 = inputText2.text else {return}
        
        let a:Int? = Int(inputText1.text!)     // firstText is UITextField
        let b:Int? = Int(inputText2.text!)
        
        print ( a! + b! )
        var ans = String(self.ans)
        
        ans = String(a! + b!)
        resultBar.text = ans
    }

    
    func calculate(number1 : Int, number2 : Int, mathoperator : String) -> Int? {
        
        var ans : Int = 0
        
        switch mathoperator{
        case "+" :
            ans = number1 + number2
        case "-" :
            ans = number1 - number2
        case "×" :
            ans = number1  * number2
        case "÷" :
            ans = number1 / number2
            
        default:
            break
        }
        
        return ans
        }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

