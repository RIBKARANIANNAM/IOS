//
//  ViewController.swift
//  CourseDisplayApp1
//
//  Created by Annam,Ribkarani on 3/16/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //update the details of the first course.(image,num,title,sem)
        
        displayImage.image = UIImage(named: courses[0][0])
        
        crsnum.text = courses[0][1]
        crsTitle.text = courses[0][2]
        semOffered.text = courses[0][3]
        
        
        //Disable the previous button
        
        prevBtnClicked.isEnabled = false
        
        //enable the next button
        nextBtnClicked.isEnabled  = false
        
    }

    @IBOutlet weak var displayImage: UIImageView!
    @IBOutlet weak var crsnum: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    @IBOutlet weak var semOffered: UILabel!
    
    let courses = [["image01","44555","NEtwork Security","Fall2022"],["image02","44643","ios","Spring 2023"],["image03","44565","Streaming Data","Summer 2023"]]
    
    var imageNum = 0
    
    @IBAction func prevBtnClicked(_ sender: UIButton) {
        
        //Decrement image number
        imageNum-=1
        //
        displayImage.image = UIImage(named: courses[imagenum][0])
        crsnum.text = courses[imageNum][1]
        crsTitle.text = courses[imageNum][2]
        semOffered.text = courses[imageNum][3]
        //enable nextbutton
        nextBtnClicked
        //when you reach starting of array disable previous button
        
        if(imageNum == 0)
        {
            prevBtnClicked.isEnabled = false
        }
        
    }
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        
        //Increment my image number
        imageNum+=1
        //update the next course details
        displayImage.image = UIImage(named:courses[imageNum][0])
        crsnum.text = courses[imageNum][1]
        crsTitle.text = courses[imageNum][2]
        semOffered.text = courses[imageNum][3]
        
        
        //previous button should be enabled
        
        prevBtnClicked.isEnabled = true
        //when you reach end of array,next button should be disabled.
        //button should be disbaled
        if(imageNum == courses.count-1)
        {
            nextBtnClicked.isEnabled = false
        }
    }
    @IBAction func previousBtn(_ sender: Any) {
    }
    
    func UpdateCourse(_imageNumber:Int)
    {
        displayImage.image = UIImage(named:courses[imageNum][0])
        crsnum.text = courses[imageNum][1]
        crsTitle.text = courses[imageNum][2]
        semOffered.text = courses[imageNum][3]
        <#code#>
    }
}

 
