//
//  ViewController.swift
//  Annam_Assignment01
//
//  Created by Annam,Ribkarani on 1/31/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameOutlet: UITextField!
    
    @IBOutlet weak var lastNameOutlet: UITextField!
    
    @IBOutlet weak var yearOutlet: UITextField!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var detailsOutlet: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    
    @IBOutlet weak var fullNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitButton(_ sender: Any) {
        var x = firstNameOutlet.text!
        var y = lastNameOutlet.text!
        var z = yearOutlet.text!
        var k = Int(z) ?? 0
        var time = Date()
        var Cal = Calendar.current
        var cyear = Cal.component(.year, from:time)
        var differ = Int(cyear) - k
        fullNameLabel.text = " Full Name : \(y) \(x)"
        initialsLabel.text = " Initials : \(y.first!)\(x.first!)"
        ageLabel.text = "Age : \(differ)"
        detailsOutlet.text = " Details"
    }
    
    @IBAction func ResetButton(_ sender: Any) {
        fullNameLabel.text = " "
        initialsLabel.text! = " "
        ageLabel.text! =  " "
        firstNameOutlet.text = " "
        lastNameOutlet.text! = " "
        yearOutlet.text! = " "
        detailsOutlet.text! = " "
    }
    
}

