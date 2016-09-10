//
//  QuestionViewController.swift
//  CanadianCitizenShipTest
//
//  Created by Viviane Chan on 2016-09-07.
//  Copyright © 2016 Komrad. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    /// set properties
    var button1 = UIButton()
    var button2 = UIButton()
    var button3 = UIButton()
    var button4 = UIButton()
    var checkButton = UIButton()
    var nextButton = UIButton()

    var button1Selected = false
    var button2Selected = false
    var button3Selected = false
    var button4Selected = false
    var checkButtonSelected = false
    
    var numberOfQuestions = 1
    
    var questionsArray:NSArray!
    var currentQuestionsArray = [Int]()
    var plistPath:String!
    var plistPathInDocument:String = String()
    
    var questionNumber = 1
    

    /// ViewDid Load
    override func viewDidLoad() {
        self.preparePlistForUse()
        prepareView()
        prepareQuestions()
    }
    
    /// load Plist
    
    func preparePlistForUse(){
        let questionsPath = NSBundle.mainBundle().pathForResource("Questions", ofType: "plist")
        if let arrayOfItems = NSArray(contentsOfFile: questionsPath!) {
            self.questionsArray = arrayOfItems

            //pick random items from array
            var i = 0
            while true {
                let randomIndex = Int(arc4random_uniform(UInt32(questionsArray.count)))
                if self.currentQuestionsArray.contains(randomIndex) == false {
                    self.currentQuestionsArray.append(randomIndex)
                    i += 1
                    if i == self.numberOfQuestions
                    {
                        break
                    }
                }
            }
            print (currentQuestionsArray)
        }
    }
    
    
    /// Prepare View
    
    func prepareView()
    {
        view.backgroundColor = UIColor.whiteColor()
    }
    
    
    /// Prepare Questions

    func prepareQuestions()
    {
        // Question
        
        let label = UITextView(frame: CGRect(x: 33, y: 30, width: 200, height: 30))
        label.editable = false
        label.text = "Question "+"\(questionNumber)"+"/"+"\(numberOfQuestions)"
        label.font = Fonts.header
        self.view.addSubview(label)
        
        // Progress Bar Grey
        
        let progressBarGrey = UIView(frame: CGRect(x: 33, y: 70, width: self.view.frame.width-66, height: 6))
        progressBarGrey.layer.cornerRadius = 3.0
        progressBarGrey.backgroundColor = Color.lightgrey
        self.view.addSubview(progressBarGrey)
        
        // Progress Bar Green

        let progressBarGreen = UIView(frame: CGRect(x: 33, y: 69, width: (self.view.frame.width-66)/CGFloat(numberOfQuestions) * CGFloat(questionNumber), height: 8.0))
        progressBarGreen.backgroundColor = Color.green
        self.view.addSubview(progressBarGreen)
        
        // Questions label

        let questionlabel = UITextView(frame: CGRect(x: 33, y: 90, width: self.view.frame.width-66, height: 150))
        questionlabel.editable = false
        if let question = questionsArray[questionNumber-1]["question"] as! String! {
        questionlabel.text = "\(question)"}
        questionlabel.font = Fonts.header
        self.view.addSubview(questionlabel)
        
        // Button 1

        let button1 = UIButton(frame: CGRect(x: 33, y: 150, width: self.view.frame.width-66, height: 70))
        button1.clipsToBounds = true
        button1.layer.cornerRadius = 35.0
        button1.backgroundColor = Color.lightgrey
        if let ans1 = questionsArray[questionNumber-1]["ans1"] as! String! {
           button1.setTitle( "\(ans1)", forState: .Normal)}
        button1.setTitleColor(Color.black, forState: .Normal)
        button1.titleLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
        button1.titleLabel?.font = Fonts.answers
        button1.titleEdgeInsets = UIEdgeInsets(top: 0, left: 31, bottom: 0, right: 31)
        button1.titleLabel?.textAlignment = .Left
        self.button1 = button1
        self.view.addSubview(button1)
        button1.addTarget(self, action:  #selector(handleButton1), forControlEvents: .TouchDown)

        // Button 2

        let button2 = UIButton(frame: CGRect(x: 33, y: 230, width: self.view.frame.width-66, height: 70))
        button2.clipsToBounds = true
        button2.layer.cornerRadius = 35.0
        button2.backgroundColor = Color.lightgrey
        if let ans2 = questionsArray[questionNumber-1]["ans2"] as! String! {
            button2.setTitle( "\(ans2)", forState: .Normal)}
        button2.setTitleColor(Color.black, forState: .Normal)
        button2.titleLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
        button2.titleLabel?.font = Fonts.answers
        button2.titleEdgeInsets = UIEdgeInsets(top: 0, left: 31, bottom: 0, right: 31)
        button2.titleLabel?.textAlignment = .Left
        self.button2 = button2
        self.view.addSubview(button2)
        button2.addTarget(self, action:  #selector(handleButton2), forControlEvents: .TouchDown)

        // Button 3
        
        let button3 = UIButton(frame: CGRect(x: 33, y: 310, width: self.view.frame.width-66, height: 70))
        button3.clipsToBounds = true
        button3.layer.cornerRadius = 35.0
        button3.backgroundColor = Color.lightgrey
        if let ans3 = questionsArray[questionNumber-1]["ans3"] as! String! {
            button3.setTitle( "\(ans3)", forState: .Normal)}
        button3.setTitleColor(Color.black, forState: .Normal)
        button3.titleLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
        button3.titleLabel?.font = Fonts.answers
        button3.titleLabel?.textAlignment = .Left
        button3.titleEdgeInsets = UIEdgeInsets(top: 0, left: 31, bottom: 0, right: 31)
        self.button3 = button3
        self.view.addSubview(button3)
        button3.addTarget(self, action:  #selector(handleButton3), forControlEvents: .TouchDown)

        // Button 4
        
        let button4 = UIButton(frame: CGRect(x: 33, y: 390, width: self.view.frame.width-66, height: 70))
        button4.clipsToBounds = true
        button4.layer.cornerRadius = 35.0
        button4.backgroundColor = Color.lightgrey
        if let ans4 = questionsArray[questionNumber-1]["ans4"] as! String! {
            button4.setTitle( "\(ans4)", forState: .Normal)}
        button4.setTitleColor(Color.black, forState: .Normal)
        button4.titleLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
        button4.titleLabel?.font = Fonts.answers
        button4.titleLabel?.textAlignment = .Left
        button4.titleEdgeInsets = UIEdgeInsets(top: 0, left: 31, bottom: 0, right: 31)
        self.button4 = button4
        self.view.addSubview(button4)
        button4.addTarget(self, action:  #selector(handleButton4), forControlEvents: .TouchDown)
        
        // Check Button

        let checkButton = UIButton(frame: CGRect(x: 33, y: 500, width: 150, height: 40))
        checkButton.clipsToBounds = true
        checkButton.layer.cornerRadius = 20.0
        checkButton.setTitle("Check", forState: .Normal)
        checkButton.titleLabel?.font = Fonts.header
        checkButton.backgroundColor = Color.lightgrey
        checkButton.alpha = 0
        self.checkButton = checkButton
        self.view.addSubview(checkButton)
        checkButton.addTarget(self, action:  #selector(handleCheckButton), forControlEvents: .TouchDown)

        // Next Button
        
        let nextButton = UIButton(frame: CGRect(x: 216, y: 500, width: view.bounds.width - 150 - 99, height: 40))
        nextButton.clipsToBounds = true
        nextButton.layer.cornerRadius = 20.0
        nextButton.setTitle("Next", forState: .Normal)
        nextButton.titleLabel?.font = Fonts.header
        nextButton.backgroundColor = Color.lightgrey
        nextButton.alpha = 0
        self.nextButton = nextButton
        self.view.addSubview(nextButton)
        nextButton.addTarget(self, action:  #selector(handleNextButton), forControlEvents: .TouchDown)

    }
    
    // Handle Next Button Action
    func handleNextButton()
    {
        self.nextButton.backgroundColor = Color.green
        self.nextButton.alpha = 0
        self.checkButton.alpha = 0
        
        questionNumber = questionNumber + 1
        prepareQuestions()
    }
    
    // Handle CheckButton Action
    func handleCheckButton()
    {
        if button1Selected == true || button2Selected == true || button3Selected == true || button4Selected == true {
            if self.checkButtonSelected == false {
                self.checkButton.backgroundColor = Color.green
                self.checkButtonSelected = true
            }
        }
        
        //check if answer is correct
        
        if let correctAnswer = questionsArray[questionNumber-1]["answer"] as! String!  {
            if (button1Selected == true && correctAnswer == "1")
                || (button2Selected == true && correctAnswer == "2")
                || (button3Selected == true && correctAnswer == "3")
                || (button4Selected == true && correctAnswer == "4")
            {
                self.button1.enabled = false
                self.button2.enabled = false
                self.button3.enabled = false
                self.button4.enabled = false
                
                self.checkButton.backgroundColor = Color.green
                self.checkButton.setTitle("Correct!", forState: .Normal)
                
                UIView.animateKeyframesWithDuration(0.5, delay: 0.0, options: UIViewKeyframeAnimationOptions.CalculationModeLinear, animations: {
                    
                    UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0.5, animations: {
                        self.nextButton.alpha = 1
                    })
                    }, completion:nil)
            
            } else {
                self.checkButton.backgroundColor =  Color.red
                self.button1.enabled = false
                self.button2.enabled = false
                self.button3.enabled = false
                self.button4.enabled = false
                self.checkButton.setTitle("Incorrect!", forState: .Normal)
                UIView.animateKeyframesWithDuration(1.0, delay: 0.0, options: UIViewKeyframeAnimationOptions.CalculationModeLinear, animations: {
                    
                    UIView.addKeyframeWithRelativeStartTime(0.5, relativeDuration: 0.5, animations: {
                        self.nextButton.alpha = 1
                    })
                    }, completion:nil)
            }
        }
    }
    
    // Handle RadioButton Action

    func handleButton1()
    {
        if self.button1Selected == false {
            self.button1.backgroundColor = Color.green
            self.button1Selected = true
            
            button2.backgroundColor = Color.lightgrey
            self.button2Selected = false
            
            button3.backgroundColor = Color.lightgrey
            self.button3Selected = false
            
            button4.backgroundColor = Color.lightgrey
            self.button4Selected = false
            
            self.checkButton.alpha = 1
            
        } else {
            button1.backgroundColor = Color.lightgrey
            self.button1Selected = false
        }
    }
    
    func handleButton2()
    {
        if self.button2Selected == false {
            self.button2.backgroundColor = Color.green
            self.button2Selected = true
            
            button1.backgroundColor = Color.lightgrey
            
            self.button3Selected = false
            button3.backgroundColor = Color.lightgrey
            self.button3Selected = false
            
            button4.backgroundColor = Color.lightgrey
            self.button4Selected = false
            
            self.checkButton.alpha = 1
            
        } else {
            button2.backgroundColor = Color.lightgrey
            self.button2Selected = false
        }
    }
    
    func handleButton3()
    {
        if self.button3Selected == false {
            self.button3.backgroundColor = Color.green
            self.button3Selected = true
            
            button1.backgroundColor = Color.lightgrey
            self.button1Selected = false
            
            button2.backgroundColor = Color.lightgrey
            self.button2Selected = false
            
            button4.backgroundColor = Color.lightgrey
            self.button4Selected = false
            
            self.checkButton.alpha = 1
            
        } else {
            button3.backgroundColor = Color.lightgrey
            self.button3Selected = false
        }
    }
    
    func handleButton4()
    {
        if self.button4Selected == false {
            self.button4.backgroundColor = Color.green
            self.button4Selected = true
            
            button1.backgroundColor = Color.lightgrey
            self.button1Selected = false
            
            button2.backgroundColor = Color.lightgrey
            self.button3Selected = false
            
            button3.backgroundColor = Color.lightgrey
            self.button3Selected = false
            
            self.checkButton.alpha = 1
            
        } else {
            button4.backgroundColor = Color.lightgrey
            self.button4Selected = false
        }
        
    }

}

