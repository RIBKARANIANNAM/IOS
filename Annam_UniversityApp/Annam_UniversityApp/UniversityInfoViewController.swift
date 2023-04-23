//
//  IniversityInfoViewController.swift
//  Annam_UniversityApp
//
//  Created by Annam,Ribkarani on 4/15/23.
//

import UIKit

class UniversityInfoViewController: UIViewController {

    @IBOutlet weak var universityImageViewOutlet: UIImageView!
    
    @IBAction func showInfoAction(_ sender: UIButton) {
        universityInfoOutlet.text = university?.collegeInfo
    }
    
    @IBOutlet weak var universityInfoOutlet: UITextView!
    
    var university: UniversityList?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            universityImageViewOutlet.frame.origin.x = view.frame.width
            // Do any additional setup after loading the view.
            universityImageViewOutlet.image = UIImage(named: university!.collegeImage)
            UIView.animate(withDuration: 1, delay: 0, animations: {
                self.universityImageViewOutlet.center.x = self.view.center.x
            })
            
            
        }
        
        
    }
