//
//  ViewController.swift
//  Multipleviewcontoller
//
//  Created by Annam,Ribkarani on 4/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightTextField: UITextField!
    
    var bmi = 9.9;
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        //Get the height and weight values from the text fields
        
        var heightString = heightTextField.text!
        var weightString = weightTextField.text!
        var height = Double(heightString)
        var weight = Double(weightString)
        
        bmi = weight!/(height! * height!)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if (transition == "Resultsegue"){
            //create destination
            var destination = segue.destination as! SecondViewController
            destination.bmiResult = bmi
        }
        
        
    }
}




