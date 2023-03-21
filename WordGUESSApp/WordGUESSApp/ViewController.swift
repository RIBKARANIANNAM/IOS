//
//  ViewController.swift
//  WordGUESSApp
//
//  Created by Annam,Ribkarani on 3/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    @IBOutlet weak var HintLabel: UILabel!
    
    @IBOutlet weak var letterEnteredButton: UITextField!
    
    @IBOutlet weak var CheckButton: UIButton!
    

    
    @IBOutlet weak var StatusLabel1: UILabel!
    @IBOutlet weak var PlayAgainButton: UIButton!
    
    
    var words = [["SWIFT","Programming Language"],["DOG","Animal"],["CYCLE","Two wheeler"],["MACBOOK"],["Apple device"]]
    
    var count = 0;
    var word = ""
    var letterGuessed = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Check button should be disabled
        
        CheckButton.isEnabled = false;
        
        //Get first word from the array
        
        word = words[count][0]
        
        DisplayLabel.text = ""
        
        //populate the display label with the underscores. the # of underscores is equal to the # of characters in the word.
        
        updateUnderscores();
        //get teh first hint from the array
        HintLabel.text = "Hint:"+words[count][1]
        //clear the status label intially
        StatusLabel1.text = ""
    }
    
        
    @IBAction func CheckButtonClicked(_ sender: Any) {
        // get the text from the text field
        var letter = letterEnteredButton.text!
        
        //replace the guessed letter if the letter is part of the word
        letterGuessed = letterGuessed + letter
        var revealword = ""
        
        for 1 in word{
            if letterGuessed.contains(1){
                revealword+="\(1)"
            }
            else{
                revealword += "_"
            }
        }
        //Assigning the word to displaylabel after a guess
        
        DisplayLabel.text = revealword
        letterEnteredButton.text = ""
        
        // if the word is guessed correctly we are enabling play again button and disabling the check button
        
        if DisplayLabel.text!.contains("_") == false{
            PlayAgainButton.isHidden = false;
            CheckButton.isEnabled = false;
        }
        CheckButton.isEnabled = false
        
    }
    
    @IBAction func PlayAgainButtonClicked(_ sender: UIButton) {
    }
    
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    


}

