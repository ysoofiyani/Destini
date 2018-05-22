//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    var storyNum : Int = 1
    // TODO Step 5: Initialise instance variables here
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        story_1()
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        bottomButton.isHidden = false
        
        if storyNum == 1 && sender.tag == 1{
            story_3()
            storyNum = 3
        }
        else if storyNum == 1 && sender.tag == 2{
            story_2()
            storyNum = 2
        }
        else if storyNum == 2 && sender.tag == 1 {
            story_3()
            storyNum = 3
        }
        else if storyNum == 2 && sender.tag == 2 {
            story_4()
            storyNum = 4
        }
        else if storyNum == 3 && sender.tag == 1 {
            story_6()
            storyNum = 6
        }
        else if storyNum == 3 && sender.tag == 2 {
            story_5()
            storyNum = 5
        }
        else if storyNum == 4 || storyNum == 5 || storyNum == 6 && sender.tag == 1 {
            story_1()
            storyNum = 1
        }
    
        // TODO Step 4: Write an IF-Statement to update the views
                
        // TODO Step 6: Modify the IF-Statement to complete the story
        
    
    }
    
    func story_1(){
        storyTextView.text = "\(story1)"
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
    }

    func story_2(){
        storyTextView.text = "\(story2)"
        topButton.setTitle(answer2a, for: .normal)
        bottomButton.setTitle(answer2b, for: .normal)
    }

    func story_3(){
        storyTextView.text = "\(story3)"
        topButton.setTitle(answer3a, for: .normal)
        bottomButton.setTitle(answer3b, for: .normal)
    }

    func story_4(){
        storyTextView.text = "\(story4)"
        bottomButton.isHidden = true
        topButton.setTitle("Reset Story", for: .normal)
    }
    
    func story_5(){
        storyTextView.text = "\(story5)"
        bottomButton.isHidden = true
        topButton.setTitle("Reset Story", for: .normal)
    }
    
    func story_6(){
        storyTextView.text = "\(story6)"
        bottomButton.isHidden = true
        topButton.setTitle("Reset Story", for: .normal)
    }
}

