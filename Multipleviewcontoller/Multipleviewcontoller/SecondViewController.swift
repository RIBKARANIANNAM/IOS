//
//  SecondViewController.swift
//  Multipleviewcontoller
//
//  Created by Annam,Ribkarani on 4/6/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var bmiImageView: UIImageView!
    
    var bmiResult: Double = 0.0
    
    @IBOutlet weak var DisplayName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //set the bmi lable and image
        
        bmiLabel.text! += "\(round(bmiResult*100)/100.0)"
        bmiImageView.image = getImage(for:bmiResult)
    }
     
    func getImage(for bmi:Double)-> UIImage?{
        switch bmi {
        case ..<18.5:
            DisplayName.text!="underweight"
            return UIImage(named: "underweight")
            
        case 18.5..<25:
            DisplayName.text!="normal"
            return UIImage(named: "normal")
            
        case 25..<30:
            DisplayName.text!="Overweight"
            return UIImage(named: "overweight")
            
        default:
            DisplayName.text!="obese"
            return UIImage(named: "obese")
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Animate the BMI image view
        
        UIView.animate(withDuration: 2.0,delay: 0.0,options:[.autoreverse,.repeat], animations:{
            self.bmiImageView.frame.origin.y+=100
        },completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
