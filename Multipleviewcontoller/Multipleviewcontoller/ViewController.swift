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
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        //Get the height and weight values from the text fields
        
        guard let heightString = heightTextField.text,
              let weightString = weightTextField.text,
              let height = Double(heightString),
                let weight = Double(weightString)else{
            //Display an alret if the user enters invalid values
            let alert = UIAlertController(title:"Invalid Input",message:"Please enter valid height and weight values.",preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"OK",style:.default, handler:nil))
            present(alert,animated: true,completion: nil)
            return
            
            
        }
        //calculate the BMI value
        let bmi = weight/(height*height)
        
        //Navigate to the second view controller and pass the BMI value
        performSegue(withIdentifier: "ShowSecondViewController", sender: bmi)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "Resultsegue"{
            //create destination
            var destination = segue.destination as!
                              SecondViewController
        //if Resultsegue.identifier == "ShowSecondViewController"{
            //if let secondVC == segue.destination as? SecondViewController, let bmi = sender as? Double{
                //secondVC.bmi = bmi
            }
        }
    }




