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
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    
    var questionsArray:NSMutableArray!
    var plistPath:String!
    var plistPathInDocument:String = String()
    
    var questionNumber = 1
    

    /// ViewDid Load
    override func viewDidLoad() {
        self.preparePlistForUse()
        prepareView()
    }
    
    /// load Plist
    
    func preparePlistForUse(){
        let questionsPath = NSBundle.mainBundle().pathForResource("Questions", ofType: "plist")
        if let arrayOfItems = NSMutableArray(contentsOfFile: questionsPath!) {
            self.questionsArray = arrayOfItems
        }

    }
    /// Prepare View
    
    func prepareView()
    {
        view.backgroundColor = UIColor.whiteColor()
        
        // Question
        
        let label = UILabel(frame: CGRect(x: 33, y: 30, width: 200, height: 30))
        label.text = "Question "+"\(questionNumber)"+"/10"
        label.font = Fonts.header
        self.view.addSubview(label)
        
        // Progress Bar Grey
        
        let progressBarGrey = UIView(frame: CGRect(x: 33, y: 70, width: self.view.frame.width-66, height: 6))
        progressBarGrey.layer.cornerRadius = 3.0
        progressBarGrey.backgroundColor = Color.lightgrey
        self.view.addSubview(progressBarGrey)
        
        // Progress Bar Green

        let progressBarGreen = UIView(frame: CGRect(x: 33, y: 69, width: (self.view.frame.width-66)/10 * CGFloat(questionNumber), height: 8.0))
        progressBarGreen.backgroundColor = Color.green
        self.view.addSubview(progressBarGreen)
        
        // Questions label

        let questionlabel = UILabel(frame: CGRect(x: 33, y: 50, width: self.view.frame.width-66, height: 150))
        if let question = questionsArray[questionNumber-1]["question"] as! String! {
        questionlabel.text = "\(question)"}
        questionlabel.numberOfLines = 0
        questionlabel.font = Fonts.header
        self.view.addSubview(questionlabel)
        
        // Button 1

        let button1 = UIButton(frame: CGRect(x: 33, y: 215, width: 20, height: 20))
        button1.clipsToBounds = true
        button1.layer.cornerRadius = 10.0
        button1.backgroundColor = Color.white
        button1.layer.borderColor = Color.grey.CGColor
        button1.layer.borderWidth = 2.0
        self.view.addSubview(button1)
        button1.addTarget(self, action:  #selector(handleButton1), forControlEvents: .TouchUpInside)
        
        // Button 2
        
        let button2 = UIButton(frame: CGRect(x: 33, y: 305, width: 20, height: 20))
        button2.clipsToBounds = true
        button2.layer.cornerRadius = 10.0
        button2.backgroundColor = Color.white
        button2.layer.borderColor = Color.grey.CGColor
        button2.layer.borderWidth = 2.0
        self.view.addSubview(button2)
        button1.addTarget(self, action:  #selector(handleButton2), forControlEvents: .TouchUpInside)

        // Button 3
        
        let button3 = UIButton(frame: CGRect(x: 33, y: 395, width: 20, height: 20))
        button3.clipsToBounds = true
        button3.layer.cornerRadius = 10.0
        button3.backgroundColor = Color.white
        button3.layer.borderColor = Color.grey.CGColor
        button3.layer.borderWidth = 2.0
        self.view.addSubview(button3)
        button3.addTarget(self, action:  #selector(handleButton3), forControlEvents: .TouchUpInside)

        // Button 4
        
        let button4 = UIButton(frame: CGRect(x: 33, y: 485, width: 20, height: 20))
        button4.clipsToBounds = true
        button4.layer.cornerRadius = 10.0
        button4.backgroundColor = Color.white
        button4.layer.borderColor = Color.grey.CGColor
        button4.layer.borderWidth = 2.0
        self.view.addSubview(button4)
        button1.addTarget(self, action:  #selector(handleButton4), forControlEvents: .TouchUpInside)
        
        
        // Answer 1
        
        let answer1 = UITextView(frame: CGRect(x: 75, y: 205, width: self.view.frame.width-100, height: 100))
        answer1.editable = false
        if let ans1 = questionsArray[questionNumber-1]["ans1"] as! String! {
        answer1.text = "\(ans1)"}
        
        answer1.font = Fonts.answers
        self.view.addSubview(answer1)
        
        // Answer 2
        
        let answer2 = UITextView(frame: CGRect(x: 75, y: 295, width: self.view.frame.width-100, height: 100))
        answer2.editable = false
        if let ans2 = questionsArray[questionNumber-1]["ans2"] as! String! {
            answer2.text = "\(ans2)"}
        answer2.font = Fonts.answers
        self.view.addSubview(answer2)
        
        // Answer 3
        
        let answer3 = UITextView(frame: CGRect(x: 75, y: 385, width: self.view.frame.width-100, height: 100))
        answer3.editable = false
        if let ans3 = questionsArray[questionNumber-1]["ans3"] as! String! {
            answer3.text = "\(ans3)"}
        answer3.font = Fonts.answers
        self.view.addSubview(answer3)
        
        // Answer 4
        
        let answer4 = UITextView(frame: CGRect(x: 75, y: 475, width: self.view.frame.width-100, height: 100))
        answer4.editable = false
        if let ans4 = questionsArray[questionNumber-1]["ans4"] as! String! {
            answer4.text = "\(ans4)"}
        answer4.font = Fonts.answers
        self.view.addSubview(answer4)
    }
    
   
    
    // Handle Buttons Action
    
    func handleButton1()
    {
            button1.backgroundColor = Color.green
    }
    
    func handleButton2()
    {
        button2.backgroundColor = Color.green
    }
    
    func handleButton3()
    {
        button3.backgroundColor = Color.green
    }
    
    func handleButton4()
    {
        button4.backgroundColor = Color.green
    }
}

