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
    var label = UITextView()
    var progressBarGreen = UIView()
    var questionlabel = UITextView()
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
    var score = 0
    var questionIndex = 1
    
    

    /// ViewDid Load
    override func viewDidLoad() {
        self.preparePlistForUse()
        prepareView()
        prepareQuestions()
    }
    
    /// load Plist
    
    func preparePlistForUse(){
        let province = NSUserDefaults.standardUserDefaults().valueForKey("Province") as! String
        let questionsPath = NSBundle.mainBundle().pathForResource("\(province)"+"Questions", ofType: "plist")
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
        self.title = "Canadian Citizenship Test"
        view.backgroundColor = UIColor.whiteColor()
    }
    
    
    /// Prepare Questions

    func prepareQuestions()
    {
        
        if self.questionNumber <= numberOfQuestions {
            // Question index
            
            
            let label = UITextView(frame: CGRect(x: 20, y: 30, width: 200, height: 30))
            label.editable = false
            label.text = "Question "+"\(questionNumber)"+"/"+"\(numberOfQuestions)"
            label.font = Fonts.header
            self.label = label
            self.view.addSubview(label)
            
            
            // Progress Bar Grey
            
            let progressBarGrey = UIView(frame: CGRect(x: 20, y: 70, width: self.view.frame.width-44, height: 6))
            progressBarGrey.layer.cornerRadius = 3.0
            progressBarGrey.backgroundColor = Color.lightgrey
            self.view.addSubview(progressBarGrey)
            
            // Progress Bar Green
            
            let progressBarGreen = UIView(frame: CGRect(x: 20, y: 69, width: (self.view.frame.width-40)/CGFloat(numberOfQuestions) * CGFloat(questionNumber), height: 8.0))
            progressBarGreen.backgroundColor = Color.green
            self.progressBarGreen = progressBarGreen
            self.view.addSubview(progressBarGreen)
            
            // Question Index from random array
            let questionIndex = currentQuestionsArray[questionNumber-1]
            self.questionIndex = questionIndex
            
            // Questions label
            
            let questionlabel = UITextView(frame: CGRect(x: 20, y: 80, width: self.view.frame.width-44, height: 150))
            questionlabel.editable = false
            if let question = questionsArray[self.questionIndex]["question"] as! String! {
                questionlabel.text = "\(question)"}
            questionlabel.font = Fonts.header
            self.questionlabel = questionlabel
            self.view.addSubview(questionlabel)
            
            // Button 1
            
            let button1 = UIButton(frame: CGRect(x: 20, y: 180, width: self.view.frame.width-44, height: 70))
            button1.titleLabel?.textAlignment = .Center
            button1.clipsToBounds = true
            button1.layer.cornerRadius = 10.0
            button1.backgroundColor = Color.lightgrey
            if let ans1 = questionsArray[self.questionIndex]["ans1"] as! String! {
                button1.setTitle( "\(ans1)", forState: .Normal)}
            button1.setTitleColor(Color.black, forState: .Normal)
            button1.titleLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
            button1.titleLabel?.font = Fonts.answers
            button1.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
            self.button1 = button1
            self.view.addSubview(button1)
            button1.addTarget(self, action:  #selector(handleButton1), forControlEvents: .TouchUpInside)
            
            // Button 2
            
            let button2 = UIButton(frame: CGRect(x: 20, y: 260, width: self.view.frame.width-40, height: 70))
            button2.titleLabel?.textAlignment = .Center
            button2.clipsToBounds = true
            button2.layer.cornerRadius = 10.0
            button2.backgroundColor = Color.lightgrey
            if let ans2 = questionsArray[self.questionIndex]["ans2"] as! String! {
                button2.setTitle( "\(ans2)", forState: .Normal)}
            button2.setTitleColor(Color.black, forState: .Normal)
            button2.titleLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
            button2.titleLabel?.font = Fonts.answers
            button2.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
            self.button2 = button2
            self.view.addSubview(button2)
            button2.addTarget(self, action:  #selector(handleButton2), forControlEvents: .TouchUpInside)
            
            // Button 3
            
            let button3 = UIButton(frame: CGRect(x: 20, y: 340, width: self.view.frame.width-40, height: 70))
            button3.titleLabel?.textAlignment = .Center
            button3.clipsToBounds = true
            button3.layer.cornerRadius = 10.0
            button3.backgroundColor = Color.lightgrey
            if let ans3 = questionsArray[self.questionIndex]["ans3"] as! String! {
                button3.setTitle( "\(ans3)", forState: .Normal)}
            button3.setTitleColor(Color.black, forState: .Normal)
            button3.titleLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
            button3.titleLabel?.font = Fonts.answers
            button3.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
            self.button3 = button3
            self.view.addSubview(button3)
            button3.addTarget(self, action:  #selector(handleButton3), forControlEvents: .TouchUpInside)
            
            // Button 4
            
            let button4 = UIButton(frame: CGRect(x: 20, y: 420, width: self.view.frame.width-40, height: 70))
            button4.titleLabel?.textAlignment = .Center
            button4.clipsToBounds = true
            button4.layer.cornerRadius = 10.0
            button4.backgroundColor = Color.lightgrey
            if let ans4 = questionsArray[self.questionIndex]["ans4"] as! String! {
                button4.setTitle( "\(ans4)", forState: .Normal)}
            button4.setTitleColor(Color.black, forState: .Normal)
            button4.titleLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
            button4.titleLabel?.font = Fonts.answers
            button4.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
            self.button4 = button4
            self.view.addSubview(button4)
            button4.addTarget(self, action:  #selector(handleButton4), forControlEvents: .TouchUpInside)
            
            // Check Button
            
            let checkButton = UIButton(frame: CGRect(x: 20, y: 500, width: 150, height: 40))
            checkButton.clipsToBounds = true
            checkButton.layer.cornerRadius = 10.0
            checkButton.setTitle("Check", forState: .Normal)
            checkButton.titleLabel?.font = Fonts.header
            checkButton.backgroundColor = Color.lightgrey
            checkButton.alpha = 0
            self.checkButton = checkButton
            self.view.addSubview(checkButton)
            checkButton.addTarget(self, action:  #selector(handleCheckButton), forControlEvents: .TouchUpInside)
            
            // Next Button
            
            let nextButton = UIButton(frame: CGRect(x: 216, y: 500, width: view.bounds.width - 216 - 20, height: 40))
            nextButton.clipsToBounds = true
            nextButton.layer.cornerRadius = 10.0
            nextButton.setTitle("Next", forState: .Normal)
            nextButton.titleLabel?.font = Fonts.header
            nextButton.backgroundColor = Color.lightgrey
            nextButton.alpha = 0
            self.nextButton = nextButton
            self.view.addSubview(nextButton)
            nextButton.addTarget(self, action:  #selector(handleNextButton), forControlEvents: .TouchUpInside)
        }
        
    }
    
    // Update Questions
    
    func updateQuestions()
    {
        
        if self.questionNumber <= self.numberOfQuestions {
            
            // reset buttons
            
            self.button1.enabled = true
            self.button2.enabled = true
            self.button3.enabled = true
            self.button4.enabled = true
            
            self.button1Selected = false
            self.button2Selected = false
            self.button3Selected = false
            self.button4Selected = false
            
            self.button1.backgroundColor = Color.lightgrey
            self.button2.backgroundColor = Color.lightgrey
            self.button3.backgroundColor = Color.lightgrey
            self.button4.backgroundColor = Color.lightgrey
            
            self.button1.titleLabel?.font = Fonts.answers
            self.button2.titleLabel?.font = Fonts.answers
            self.button3.titleLabel?.font = Fonts.answers
            self.button4.titleLabel?.font = Fonts.answers

            self.button1.setTitleColor(Color.black, forState:.Normal)
            self.button2.setTitleColor(Color.black, forState:.Normal)
            self.button3.setTitleColor(Color.black, forState:.Normal)
            self.button4.setTitleColor(Color.black, forState:.Normal)
            
            self.checkButton.backgroundColor = Color.lightgrey
            self.checkButtonSelected = false
            self.checkButton.setTitle("Check", forState: .Normal)
            
            self.nextButton.backgroundColor = Color.lightgrey

            
            

            self.label.text = "Question "+"\(self.questionNumber)"+"/"+"\(self.numberOfQuestions)"
            
            // Progress Bar Green
            
            let progressBarGreen = UIView(frame: CGRect(x: 20, y: 69, width: (self.view.frame.width-40)/CGFloat(numberOfQuestions) * CGFloat(questionNumber), height: 8.0))
            progressBarGreen.backgroundColor = Color.green
            self.progressBarGreen = progressBarGreen
            self.view.addSubview(progressBarGreen)
            
            // Question Index from random array
            let questionIndex = self.currentQuestionsArray[questionNumber-1]
            self.questionIndex = questionIndex
            
            // Questions label
            
            if let question = questionsArray[self.questionIndex]["question"] as! String! {
                self.questionlabel.text = "\(question)"
            }
            
            // Button 1
            
            if let ans1 = questionsArray[self.questionIndex]["ans1"] as! String! {
                self.button1.setTitle( "\(ans1)", forState: .Normal)}
            button1.addTarget(self, action:  #selector(handleButton1), forControlEvents: .TouchUpInside)
            
            
            // Button 2
            
            if let ans2 = questionsArray[self.questionIndex]["ans2"] as! String! {
                button2.setTitle( "\(ans2)", forState: .Normal)}
            button2.addTarget(self, action:  #selector(handleButton2), forControlEvents: .TouchUpInside)
            
            // Button 3
            
            if let ans3 = questionsArray[self.questionIndex]["ans3"] as! String! {
                button3.setTitle( "\(ans3)", forState: .Normal)}
            button3.setTitleColor(Color.black, forState: .Normal)
            button3.addTarget(self, action:  #selector(handleButton3), forControlEvents: .TouchUpInside)
            
            // Button 4
            
            if let ans4 = questionsArray[self.questionIndex]["ans4"] as! String! {
                button4.setTitle( "\(ans4)", forState: .Normal)}
            button4.addTarget(self, action:  #selector(handleButton4), forControlEvents: .TouchUpInside)
        }
        else {
            let scoreViewController = ScoreViewController()
            scoreViewController.score = self.score
            scoreViewController.numberOfQuestions = self.numberOfQuestions
            
            NSUserDefaults.standardUserDefaults().setInteger(self.score, forKey: "userScore")
            NSUserDefaults.standardUserDefaults().setInteger(self.numberOfQuestions, forKey: "numberOfQuestions")
            
            presentViewController(scoreViewController, animated: true, completion: nil)
        }
    }

    
    // Handle Next Button Action
    func handleNextButton()
    {
        self.nextButton.backgroundColor = Color.green
        self.nextButton.alpha = 0
        self.checkButton.alpha = 0
        
        self.progressBarGreen.removeFromSuperview()
        
        self.questionNumber = questionNumber + 1
        updateQuestions()
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
        
        if let correctAnswer = questionsArray[self.questionIndex]["answer"] as! String!  {
            if (self.button1Selected == true && correctAnswer == "1")
                || (self.button2Selected == true && correctAnswer == "2")
                || (self.button3Selected == true && correctAnswer == "3")
                || (self.button4Selected == true && correctAnswer == "4")
            {
                self.button1.enabled = false
                self.button2.enabled = false
                self.button3.enabled = false
                self.button4.enabled = false
                
                self.checkButton.backgroundColor = Color.green
                self.checkButton.setTitle("Correct!", forState: .Normal)
                self.score = self.score + 1
                
                self.nextButton.alpha = 1
                
            
            } else {
                self.checkButton.backgroundColor =  Color.red
                self.button1.enabled = false
                self.button2.enabled = false
                self.button3.enabled = false
                self.button4.enabled = false
                self.checkButton.setTitle("Incorrect!", forState: .Normal)
                self.nextButton.alpha = 1
                
                if let answer = questionsArray[self.questionIndex]["answer"] as! String! {
                    if answer == "1" {
                        if self.button1Selected == true
                        {self.button1.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        else if self.button2Selected == true
                        {self.button2.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        else if self.button3Selected == true
                        {self.button3.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        else if self.button4Selected == true
                        {self.button4.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        
                        self.button1.setTitleColor(Color.red, forState: .Normal)
                        self.button1.titleLabel!.font = Fonts.wrongAnswers
                    }
                    if answer == "2" {
                        if self.button1Selected == true
                        {self.button1.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        else if self.button2Selected == true
                        {self.button2.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        else if self.button3Selected == true
                        {self.button3.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        else if self.button4Selected == true
                        {self.button4.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        
                        self.button2.setTitleColor(Color.red, forState: .Normal)
                        self.button2.titleLabel!.font = Fonts.wrongAnswers
                    }
                    if answer == "3" {
                        if self.button1Selected == true
                        {self.button1.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        else if self.button2Selected == true
                        {self.button2.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        else if self.button3Selected == true
                        {self.button3.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        else if self.button4Selected == true
                        {self.button4.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        
                        self.button3.setTitleColor(Color.red, forState: .Normal)
                        self.button3.titleLabel!.font = Fonts.wrongAnswers
                    }
                    if answer == "4" {
                        if self.button1Selected == true
                        {self.button1.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        else if self.button2Selected == true
                        {self.button2.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        else if self.button3Selected == true
                        {self.button3.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        else if self.button4Selected == true
                        {self.button4.backgroundColor = Color.red
                            self.button1.setTitleColor(Color.black, forState: .Normal)}
                        
                        self.button4.setTitleColor(Color.red, forState: .Normal)
                        self.button4.titleLabel!.font = Fonts.wrongAnswers
                    }
                }
            }
        }
    }
    // Handle RadioButton Action

    func handleButton1()
    {
        if self.button1Selected == false {
            self.button1.backgroundColor = Color.green
            self.button1Selected = true
            
            self.button2.backgroundColor = Color.lightgrey
            self.button2Selected = false
            
            self.button3.backgroundColor = Color.lightgrey
            self.button3Selected = false
            
            self.button4.backgroundColor = Color.lightgrey
            self.button4Selected = false
            
            self.checkButton.alpha = 1
            
        } else {
            self.button1.backgroundColor = Color.lightgrey
            self.button1Selected = false
        }
    }
    
    func handleButton2()
    {
        if self.button2Selected == false {
            self.button2.backgroundColor = Color.green
            self.button2Selected = true
            
            self.button1.backgroundColor = Color.lightgrey
            self.button1Selected = false
            
            self.button3.backgroundColor = Color.lightgrey
            self.button3Selected = false
            
            self.button4.backgroundColor = Color.lightgrey
            self.button4Selected = false
            
            self.checkButton.alpha = 1
            
        } else {
            self.button2.backgroundColor = Color.lightgrey
            self.button2Selected = false
        }
    }
    
    func handleButton3()
    {
        if self.button3Selected == false {
            self.button3.backgroundColor = Color.green
            self.button3Selected = true
            
            self.button1.backgroundColor = Color.lightgrey
            self.button1Selected = false
            
            self.button2.backgroundColor = Color.lightgrey
            self.button2Selected = false
            
            self.button4.backgroundColor = Color.lightgrey
            self.button4Selected = false
            
            self.checkButton.alpha = 1
            
        } else {
            self.button3.backgroundColor = Color.lightgrey
            self.button3Selected = false
        }
    }
    
    func handleButton4()
    {
        if self.button4Selected == false {
            self.button4.backgroundColor = Color.green
            self.button4Selected = true
            
            self.button1.backgroundColor = Color.lightgrey
            self.button1Selected = false
            
            self.button2.backgroundColor = Color.lightgrey
            self.button2Selected = false
            
            self.button3.backgroundColor = Color.lightgrey
            self.button3Selected = false
            
            self.checkButton.alpha = 1
            
        } else {
            self.button4.backgroundColor = Color.lightgrey
            self.button4Selected = false
        }
        
    }
    
}

