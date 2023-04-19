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
    }
    
    @IBOutlet weak var universityInfoOutlet: UITextView!
    
    var university: UniversityList?
        
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
            if let university = self.university {
                self.title = university.collegeName
                self.universityImageViewOutlet.image = UIImage(named:university.collegeImage)
                self.universityInfoOutlet.text = university.collegeInfo
            }
        }
        
        
    }
