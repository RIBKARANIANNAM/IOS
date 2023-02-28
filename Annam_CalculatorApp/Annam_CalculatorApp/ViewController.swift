//
//  ViewController.swift
//  Annam_CalculatorApp
//
//  Created by Annam,Ribkarani on 2/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultOutlet: UILabel!
        var operand1:Double = -6.19
        var operand2:Double = -6.19
        var calcOperator: String = " "
    
    
    @IBAction func ACbutton(_ sender: Any) {
        resultOutlet.text = ""
        operand1 = -6.19
        operand2 = -6.19
    }
    
    
    @IBAction func Cbutton(_ sender: Any) {
        var temp = resultOutlet.text!
        if(!temp.isEmpty){
            temp.removeLast()}
        if(temp.isEmpty){
            operand1 = -6.19
            operand2 = -6.19
        }
        resultOutlet.text = temp
    }
    
    @IBAction func plusminbutton(_ sender: Any) {
        if calcOperator == "+"{
            calcOperator = "-"
        }
        else if calcOperator == "-"{
            calcOperator = "+"
        }
    }
    
    @IBAction func dividbutton(_ sender: Any) {
        operand1 = Double(resultOutlet.text!) ?? 0.0
        calcOperator = "÷"
        resultOutlet.text = ""
    }
    @IBAction func sevenbutton(_ sender: Any) {
        resultOutlet.text = resultOutlet.text!+"7"
    }
    @IBAction func eightbutton(_ sender: Any) {
        resultOutlet.text = resultOutlet.text!+"8"
    }
    @IBAction func ninebutton(_ sender: Any) {
        resultOutlet.text = resultOutlet.text!+"9"
    }
    @IBAction func multiplicationbutton(_ sender: Any) {
        operand1 = Double(resultOutlet.text!) ?? 0.0
        calcOperator = "X"
        resultOutlet.text = ""
    }
    @IBAction func fourbutton(_ sender: Any) {
        resultOutlet.text = resultOutlet.text!+"4"
    }
    @IBAction func fivebutton(_ sender: Any) {
        resultOutlet.text = resultOutlet.text!+"5"
    }
    @IBAction func sixbutton(_ sender: Any) {
        resultOutlet.text = resultOutlet.text!+"6"
    }
    @IBAction func onebutton(_ sender: Any) {
        resultOutlet.text = resultOutlet.text!+"1"
    }
    @IBAction func twobutton(_ sender: Any) {
        resultOutlet.text = resultOutlet.text!+"2"
    }
    @IBAction func threebutton(_ sender: Any) {
        resultOutlet.text = resultOutlet.text!+"3"
    }
    @IBAction func plusbutton(_ sender: Any) {
        operand1 = Double(resultOutlet.text!) ?? 0.0
        calcOperator = "+"
        resultOutlet.text = ""
    }
    @IBAction func minusbutton(_ sender: Any) {
        operand1 = Double(resultOutlet.text!) ?? 0.0
        calcOperator = "-"
        resultOutlet.text = ""
    }
    @IBAction func equalbutton(_ sender: Any) {
        operand2 = Double(resultOutlet.text!) ?? 0.0
                if calcOperator.contains("+"){
                    var result = operand1+operand2
                    if(result.truncatingRemainder(dividingBy: 1)==0){
                        resultOutlet.text = "\(Int(result))"
                    }
                    else {resultOutlet.text = "\(result)"}
                }
                else if calcOperator.contains("-"){
                    var result = operand1-operand2
                    if(result.truncatingRemainder(dividingBy: 1)==0){
                        resultOutlet.text = "\(Int(result))"
                    }
                    else{resultOutlet.text = "\(result)"}
                }
                if calcOperator.contains("X"){
                    var result = operand1*operand2
                    if(result.truncatingRemainder(dividingBy: 1)==0){
                        resultOutlet.text = "\(Int(result))"
                    }
                    else {resultOutlet.text = "\(result)"}
                }
                if calcOperator.contains("÷"){
                    var result = operand1/operand2
                    if(operand2 == 0){
                        resultOutlet.text = "Not a Number"
                    }
                    else if(result.truncatingRemainder(dividingBy: 1)==0){
                        resultOutlet.text = "\(Int(result))"
                    }
                    else {resultOutlet.text = "\(round(result * 100000) / 100000.0)"}
                }
                if calcOperator.contains("%"){
                    var result = operand1.truncatingRemainder(dividingBy : operand2)
                    if(result.truncatingRemainder(dividingBy: 1)==0){
                        resultOutlet.text = "\(Int(result))"
                    }
                    else {resultOutlet.text = "\(round(result * 100000) / 100000.0)"}
                }
    }
    @IBAction func percentagebutton(_ sender: Any) {
        operand1 = Double(resultOutlet.text!) ?? 0.0
        calcOperator = "%"
        resultOutlet.text = ""
    }
    @IBAction func dotbutton(_ sender: Any) {
        if(!resultOutlet.text!.contains(".")){
            resultOutlet.text = resultOutlet.text!+"."
        }
    }
    @IBAction func zerobutton(_ sender: Any) {
        resultOutlet.text = resultOutlet.text!+"0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

