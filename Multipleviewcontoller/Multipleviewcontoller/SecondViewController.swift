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
    
    var bmi: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //set the bmi lable and image
        
        bmiLabel.text = String(format:"%.If",bmi)
        bmiImageView.image = getImage(for:bmi)
    }
     
    func getImage(for bmi:Double)-> UIImage?{
        switch bmi {
        case ..<18.5:
            return UIImage(named: "underweight")
        case 18.5..<25:
            return UIImage(named: "normal")
        case 25..<30:
            return UIImage(named: "Overweight")
        default:
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
