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
    @IBOutlet var nextPageBtnTapped: UIBarButtonItem!
    
    var number1 : Int = 0
    var number2 : Int = 0
    var ans : Int = 0
    
    @IBAction func webView(_ sender: Any) {
        if resultBar.text == String(999) {

            performSegue(withIdentifier: "openWeb", sender: self)
        } else  {return}
    }
   
    @IBAction func addition(_ sender: Any) {
        guard let number1S = Int(inputText1.text!) else {return}
        guard let number2S = Int(inputText2.text!) else {return}
        
        let ans = calculate(number1: number1S, number2: number2S, mathoperator: "+")
        
        resultBar.text = String(ans!)
        
        openGoogleIfResultsIs999(calculationResult: ans! )
        
        displayGeniusWhenIsMultiplyOf9(ans: ans!)
        // try to not put "!" try to put if let or guard let
    }

    @IBAction func subtraction(_ sender: Any) {
        
        guard let number1S = Int(inputText1.text!) else {return}
        guard let number2S = Int(inputText2.text!) else {return}
        
        let ans = calculate(number1: number1S, number2: number2S, mathoperator: "-")
        
        resultBar.text = String(ans!)
        
        openGoogleIfResultsIs999(calculationResult: ans! )
        
        displayGeniusWhenIsMultiplyOf9(ans: ans!)

    }
    @IBAction func multiple(_ sender: Any) {
        
        guard let number1S = Int(inputText1.text!) else {return}
        guard let number2S = Int(inputText2.text!) else {return}
        
        let ans = calculate(number1: number1S, number2: number2S, mathoperator: "×")
        
        resultBar.text = String(ans!)
        
        openGoogleIfResultsIs999(calculationResult: ans! )
        
        displayGeniusWhenIsMultiplyOf9(ans: ans!)

    }
    @IBAction func division(_ sender: Any) {
        
        guard let number1S = Int(inputText1.text!) else {return}
        guard let number2S = Int(inputText2.text!) else {return}
        
        let ans = calculate(number1: number1S, number2: number2S, mathoperator: "÷")
        
        resultBar.text = String(ans!)
        
        openGoogleIfResultsIs999(calculationResult: ans! )
        
        displayGeniusWhenIsMultiplyOf9(ans: ans!)

    }
   
//Declaration of function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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
    
    func displayAlertWithAction(ControllerTitle: String, alertTitle: String) {
        
        let alert = UIAlertController(title: "\(ControllerTitle)", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "\(alertTitle)", style: .default) { (action) in }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil )
        
    }
    
    func restartGame() {
        inputText1.text = ""
        inputText2.text = ""
    }
    
    func openGoogleIfResultsIs999 (calculationResult : Int) {
        
        if calculationResult == 999 {
            
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next Page", style: .plain, target: self, action: #selector(openGoogleViewController))
            
            restartGame()
        }
        
    }
    
    func openGoogleViewController() {
        
        performSegue(withIdentifier: "openWeb", sender: self)
    }
    
    func displayGeniusWhenIsMultiplyOf9(ans : Int) {
        
        if ans % 9 == 0 { displayAlertWithAction(ControllerTitle: "Genius", alertTitle: "Restart")
            restartGame()
        }
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.rightBarButtonItem = nil
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
    }

  

}

