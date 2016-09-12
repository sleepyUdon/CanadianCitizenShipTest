//
//  NumberQuestionsViewController.swift
//  CanadianCitizenShipTest
//
//  Created by Viviane Chan on 2016-09-07.
//  Copyright © 2016 Komrad. All rights reserved.
//

import UIKit

class NumberQuestionsViewController: UIViewController {
    
    /// declare properties
    var dict = NSDictionary()
    var numberOfQuestions = Int()
    
    var button10 = UIButton()
    var button20 = UIButton()
    var button30 = UIButton()
    var button50 = UIButton()
    var button100 = UIButton()
    var buttonUnlimited = UIButton()

    
    /// ViewDid Load
    override func viewDidLoad() {
    prepareView()
    }

    /// Prepare View

    func prepareView()
    {

        // set variables
        
        let iconSize = CGFloat(80.0) // heigth and width of icons
        let verticalSpacing = CGFloat(150.0) // vertical spacing between icons
        let horizontalSpacing = CGFloat(100.0) // horizontal spacing between icons

        view.backgroundColor = UIColor.whiteColor()
        
        let label = UILabel(frame: CGRect(x: 33, y: 94, width: 400, height: 30))
        label.text = "Select Number of Questions"
        label.font = Fonts.header
        view.addSubview(label)
        
        
        /// 10 Button
        
        let button10 = UIButton(frame: CGRect(x: view.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing, width: iconSize, height: iconSize))
        button10.backgroundColor = Color.lightgrey
        button10.layer.cornerRadius = iconSize/2
        button10.setTitle("10", forState: .Normal)
        button10.setTitleColor(Color.black, forState: UIControlState.Normal)
        button10.titleLabel!.font = Fonts.number
        button10.titleLabel?.textAlignment = .Center
        self.button10 = button10
        view.addSubview(button10)
        button10.addTarget(self, action:  #selector(handleButton10), forControlEvents: .TouchUpInside)
        
        // 20 Button
        
        let button20 = UIButton(frame: CGRect(x: view.frame.width/2 - iconSize/2, y: verticalSpacing, width: iconSize, height: iconSize))
        button20.backgroundColor = Color.lightgrey
        button20.layer.cornerRadius = iconSize/2
        button20.setTitle("20", forState: .Normal)
        button20.setTitleColor(Color.black, forState: UIControlState.Normal)
        button20.titleLabel!.font = Fonts.number
        button20.titleLabel?.textAlignment = .Center
        self.button20 = button20
        view.addSubview(button20)
        button20.addTarget(self, action:  #selector(handleButton20), forControlEvents: .TouchUpInside)
        
        // 30 Button
        
        let button30 = UIButton(frame: CGRect(x: view.frame.width/2 - iconSize/2 + horizontalSpacing, y: verticalSpacing, width: iconSize, height: iconSize))
        button30.backgroundColor = Color.lightgrey
        button30.layer.cornerRadius = iconSize/2
        button30.setTitle("30", forState: .Normal)
        button30.setTitleColor(Color.black, forState: UIControlState.Normal)
        button30.titleLabel!.font = Fonts.number
        button30.titleLabel?.textAlignment = .Center
        self.button30 = button30
        view.addSubview(button30)
        button30.addTarget(self, action:  #selector(handleButton30), forControlEvents: .TouchUpInside)
        
        
        // 50 Button
        
        let button50 = UIButton(frame: CGRect(x: view.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing*2 - 30.0, width: iconSize, height: iconSize))
        button50.backgroundColor = Color.lightgrey
        button50.layer.cornerRadius = iconSize/2
        button50.setTitle("50", forState: .Normal)
        button50.setTitleColor(Color.black, forState: UIControlState.Normal)
        button50.titleLabel!.font = Fonts.number
        button50.titleLabel?.textAlignment = .Center
        self.button50 = button50
        view.addSubview(button50)
        button50.addTarget(self, action:  #selector(handleButton50), forControlEvents: .TouchUpInside)
        
        
        // 100 Button
        
        let button100 = UIButton(frame: CGRect(x: view.frame.width/2 - iconSize/2, y: verticalSpacing*2 - 30.0, width: iconSize, height: iconSize))
        button100.backgroundColor = Color.lightgrey
        button100.layer.cornerRadius = iconSize/2
        button100.setTitle("100", forState: .Normal)
        button100.setTitleColor(Color.black, forState: UIControlState.Normal)
        button100.titleLabel!.font = Fonts.number
        button100.titleLabel?.textAlignment = .Center
        self.button100 = button100
        view.addSubview(button100)
        button100.addTarget(self, action:  #selector(handleButton100), forControlEvents: .TouchUpInside)
        
        
        // Unlimited Button
        
        let buttonUnlimited = UIButton(frame: CGRect(x: view.frame.width/2 - iconSize/2 + horizontalSpacing, y: verticalSpacing*2 - 30.0, width: iconSize, height: iconSize))
        buttonUnlimited.backgroundColor = Color.lightgrey
        buttonUnlimited.layer.cornerRadius = iconSize/2
        buttonUnlimited.titleLabel?.numberOfLines = 0
        buttonUnlimited.setTitle("Until you feel so Canadian", forState: .Normal)
        buttonUnlimited.setTitleColor(Color.black, forState: UIControlState.Normal)
        buttonUnlimited.titleLabel!.font = UIFont (name: "Avenir-Heavy", size: 14)
        buttonUnlimited.titleLabel?.textAlignment = .Center
        self.buttonUnlimited = buttonUnlimited
        view.addSubview(buttonUnlimited)
        buttonUnlimited.addTarget(self, action:  #selector(handleButtonunlimited), forControlEvents: .TouchUpInside)
    }
    
    override func viewWillAppear(animated: Bool) {
        
        // Landscape Image
        
        let landscapeView = UIImageView(frame: CGRect(x: 0, y: view.frame.height - 200.0, width: view.frame.width, height: 200.0))
        view.addSubview(landscapeView)
        let lakeImage = UIImage(named:"lake.png")
        landscapeView.image = lakeImage
        landscapeView.alpha = 0

        UIImageView.animateWithDuration(2.5, animations: {
            landscapeView.alpha = 1
            }, completion: nil)
    }
    
    
    
    
    func handleButton10()
    {
        // fetch an array of 10 unindentical questions from database for that province
        let questionsViewController = QuestionViewController()
        numberOfQuestions = 10
        self.button10.backgroundColor = Color.green
        questionsViewController.numberOfQuestions = numberOfQuestions
        presentViewController(questionsViewController, animated: true, completion: nil)
        
    }
    
    func handleButton20()
    {
        // fetch an array of 20 unindentical questions from database for that province
        let questionsViewController = QuestionViewController()
        numberOfQuestions = 20
        self.button20.backgroundColor = Color.green
        questionsViewController.numberOfQuestions = numberOfQuestions
        presentViewController(questionsViewController, animated: true, completion: nil)

    }
    
    func handleButton30()
    {
        // fetch an array of 30 unindentical questions from database for that province
        let questionsViewController = QuestionViewController()
        numberOfQuestions = 30
        self.button30.backgroundColor = Color.green
        questionsViewController.numberOfQuestions = numberOfQuestions
        presentViewController(questionsViewController, animated: true, completion: nil)
    }
    
    func handleButton50()
    {
        // fetch an array of 50 unindentical questions from database for that province
        let questionsViewController = QuestionViewController()
        self.button50.backgroundColor = Color.green
        numberOfQuestions = 50
        questionsViewController.numberOfQuestions = numberOfQuestions
        presentViewController(questionsViewController, animated: true, completion: nil)
    }
    
    func handleButton100()
    {
        // fetch an array of 100 unindentical questions from database for that province
        let questionsViewController = QuestionViewController()
        self.button100.backgroundColor = Color.green
        numberOfQuestions = 100
        questionsViewController.numberOfQuestions = numberOfQuestions
        presentViewController(questionsViewController, animated: true, completion: nil)
    }
    
    func handleButtonunlimited()
    {
        // fetch all unindentical questions from database for that province
        let questionsViewController = QuestionViewController()
        self.buttonUnlimited.backgroundColor = Color.green
        numberOfQuestions = 150
        questionsViewController.numberOfQuestions = numberOfQuestions
        presentViewController(questionsViewController, animated: true, completion: nil)
    }

}
