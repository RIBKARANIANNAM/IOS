//
//  ViewController.swift
//  SamplePractoceApp3
//
//  Created by Annam,Ribkarani on 1/26/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var crs1: UITextField!
    
    
    @IBOutlet weak var crs2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
        
        
        //read the course 1 from crs1 and store it in a variable.
        
        var crs1Name=crs1.text!
    
        var crs2Nmae=crs2.text!
        displaylabel.text = "\(crs1Name)-\(crs2Nmae)"
    
    }
    
    @IBOutlet weak var displaylabel: UILabel!
    
    
    
    
}

