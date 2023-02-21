//
//  ViewController.swift
//  DisplayimageApp
//
//  Created by Annam,Ribkarani on 2/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageviewOutLet: UIImageView!
    
    @IBOutlet weak var discrptionlabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func displayImage(_ sender: Any) {
        //Display the image
        imageviewOutLet.image = UIImage(named: "Dhoni")
        
        //Display the text in label
        discrptionlabelOutlet.text = "Captin of 2011 Cricket World Cup!"
    }
    
}

