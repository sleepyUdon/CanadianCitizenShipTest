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
    
    var button1Selected = false
    var button2Selected = false
    var button3Selected = false
    var button4Selected = false

    
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

        let button1 = UIButton(frame: CGRect(x: 33, y: 180, width: 20, height: 20))
        button1.clipsToBounds = true
        button1.layer.cornerRadius = 10.0
        button1.backgroundColor = Color.white
        button1.layer.borderColor = Color.grey.CGColor
        button1.layer.borderWidth = 2.0
        self.button1 = button1
        self.view.addSubview(button1)
        button1.addTarget(self, action:  #selector(handleButton1), forControlEvents: .TouchDown)
        
        // Button 2
        
        let button2 = UIButton(frame: CGRect(x: 33, y: 260, width: 20, height: 20))
        button2.clipsToBounds = true
        button2.layer.cornerRadius = 10.0
        button2.backgroundColor = Color.white
        button2.layer.borderColor = Color.grey.CGColor
        button2.layer.borderWidth = 2.0
        self.button2 = button2
        self.view.addSubview(button2)
        button2.addTarget(self, action:  #selector(handleButton2), forControlEvents: .TouchDown)

        // Button 3
        
        let button3 = UIButton(frame: CGRect(x: 33, y: 340, width: 20, height: 20))
        button3.clipsToBounds = true
        button3.layer.cornerRadius = 10.0
        button3.backgroundColor = Color.white
        button3.layer.borderColor = Color.grey.CGColor
        button3.layer.borderWidth = 2.0
        self.button3 = button3
        self.view.addSubview(button3)
        button3.addTarget(self, action:  #selector(handleButton3), forControlEvents: .TouchDown)

        // Button 4
        
        let button4 = UIButton(frame: CGRect(x: 33, y: 420, width: 20, height: 20))
        button4.clipsToBounds = true
        button4.layer.cornerRadius = 10.0
        button4.backgroundColor = Color.white
        button4.layer.borderColor = Color.grey.CGColor
        button4.layer.borderWidth = 2.0
        self.button4 = button4
        self.view.addSubview(button4)
        button4.addTarget(self, action:  #selector(handleButton4), forControlEvents: .TouchDown)
        
        
        // Answer 1
        
        let answer1 = UITextView(frame: CGRect(x: 60, y: 170, width: self.view.frame.width-80, height: 100))
        answer1.editable = false
        if let ans1 = questionsArray[questionNumber-1]["ans1"] as! String! {
        answer1.text = "\(ans1)"}
        
        answer1.font = Fonts.answers
        self.view.addSubview(answer1)
        
        // Answer 2
        
        let answer2 = UITextView(frame: CGRect(x: 60, y: 250, width: self.view.frame.width-80, height: 100))
        answer2.editable = false
        if let ans2 = questionsArray[questionNumber-1]["ans2"] as! String! {
            answer2.text = "\(ans2)"}
        answer2.font = Fonts.answers
        self.view.addSubview(answer2)
        
        // Answer 3
        
        let answer3 = UITextView(frame: CGRect(x: 60, y: 330, width: self.view.frame.width-80, height: 100))
        answer3.editable = false
        if let ans3 = questionsArray[questionNumber-1]["ans3"] as! String! {
            answer3.text = "\(ans3)"}
        answer3.font = Fonts.answers
        self.view.addSubview(answer3)
        
        // Answer 4
        
        let answer4 = UITextView(frame: CGRect(x: 60, y: 410, width: self.view.frame.width-80, height: 100))
        answer4.editable = false
        if let ans4 = questionsArray[questionNumber-1]["ans4"] as! String! {
            answer4.text = "\(ans4)"}
        answer4.font = Fonts.answers
        self.view.addSubview(answer4)
        
        
        let checkButton = UIButton(frame: CGRect(x: view.bounds.width/2 - 75, y: 500, width: 150, height: 40))
        checkButton.clipsToBounds = true
        checkButton.layer.cornerRadius = 20.0
        checkButton.setTitle("CHECK", forState: .Normal)
        checkButton.titleLabel?.font = Fonts.header
        checkButton.backgroundColor = Color.lightgrey
        self.view.addSubview(checkButton)
        checkButton.addTarget(self, action:  #selector(handleCheckButton), forControlEvents: .TouchDown)
    }
    
   
    
    // Handle CheckButton Action
    func handleCheckButton()
    {
        
        // if correct show animation
        
        // if incorrect show animation
        
        prepareQuestions()
        questionNumber = questionNumber + 1
    }

    
    // Handle RadioButton Action

    func handleButton1()
    {
        if self.button1Selected == false {
            self.button1.backgroundColor = Color.green
            self.button1.layer.borderWidth = 0
            self.button1Selected = true
        } else {
            button1.backgroundColor = Color.white
            button1.layer.borderColor = Color.grey.CGColor
            button1.layer.borderWidth = 2.0
            self.button1Selected = false
        }
    }
    
    func handleButton2()
    {
        if self.button2Selected == false {
            self.button2.backgroundColor = Color.green
            self.button2.layer.borderWidth = 0
            self.button2Selected = true
        } else {
            button2.backgroundColor = Color.white
            button2.layer.borderColor = Color.grey.CGColor
            button2.layer.borderWidth = 2.0
            self.button2Selected = false
        }
    }
    
    func handleButton3()
    {
        if self.button3Selected == false {
            self.button3.backgroundColor = Color.green
            self.button3.layer.borderWidth = 0
            self.button3Selected = true
        } else {
            button3.backgroundColor = Color.white
            button3.layer.borderColor = Color.grey.CGColor
            button3.layer.borderWidth = 2.0
            self.button3Selected = false
        }
    }
    
    func handleButton4()
    {
        if self.button4Selected == false {
            self.button4.backgroundColor = Color.green
            self.button4.layer.borderWidth = 0
            self.button4Selected = true
        } else {
            button4.backgroundColor = Color.white
            button4.layer.borderColor = Color.grey.CGColor
            button4.layer.borderWidth = 2.0
            self.button4Selected = false
        }
        
    }
}

