//
//  ViewController.swift
//  hello3App
//
//  Created by Annam,Ribkarani on 1/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputNameOutlet: UITextField!
    @IBOutlet weak var DisplayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    


    
}

    @IBAction func buttonClicked(_ sender: UIButton) {
        
        var input=InputNameOutlet.text!
        DisplayLabel.text="Hello \(input)"
        
    }
    
    @IBOutlet weak var FirstName: UILabel!
}

