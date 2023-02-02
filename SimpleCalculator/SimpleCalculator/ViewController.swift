//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Annam,Ribkarani on 2/2/23.
//

import UIKit

class ViewController: UIViewController {
    var operand1:Double = -1.1
    var operand2:Double = -1.1
    var _operator: Character = " "

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var Resultoutlet: UILabel!
    
    @IBAction func Btn5Click(_ sender: Any) {
        //Display 5.
        Resultoutlet.text = Resultoutlet.text! + "5"
        if(operand1 == -1.1){
            operand1 = 5
        }
        else{
            operand2 = 5
        }
    }
    
    @IBAction func BtnPlusClick(_sender: Any) {
        Resultoutlet.text = Resultoutlet.text! + "+"
        if(_operator == " "){
            _operator = "+"
        }
    }
    @IBAction func Btn7Click(_ sender: Any) {
        Resultoutlet.text = Resultoutlet.text! + "7"
        if(operand2 == -1.1){
            operand2 = 3
        }
        else{
            operand1 = 3
        }
    }
    @IBAction func BtnEqualsClick(_ sender: Any) {
        Resultoutlet.text = Resultoutlet.text! + "="
        if(_operator == "+"){
            Resultoutlet.text = "\(operand1+operand2)"
        }
    }
    @IBAction func Clearall(_ sender: Any) {
        Resultoutlet.text = " "
        
    }
}

