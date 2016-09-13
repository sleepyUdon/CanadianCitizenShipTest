//
//  ScoreViewController.swift
//  CanadianCitizenShipTest
//
//  Created by Viviane Chan on 2016-09-10.
//  Copyright © 2016 Komrad. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    
    /// set properties
    
    var label = UILabel()
    var counterView = CounterView()
    var button = UIButton()
    var score : Int = 1
    var numberOfQuestions : Int = 1


    /// View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
        if let score = score as Int! {
            label.text = "\(score)"+"/"+"\(numberOfQuestions)"
        } else {
            print ("crashed")
        }
        

    }
    
    
    /// Prepare View
    
    func prepareView()
    {
        view.backgroundColor = UIColor.whiteColor()
        
        let counterView = CounterView(frame: CGRect(x: view.bounds.width/2 - 100, y: 100, width: 200, height: 200))
        counterView.backgroundColor = UIColor.whiteColor()
        self.counterView = counterView
        view.addSubview(counterView)
        
        
        let label = UILabel(frame: CGRect(x: view.bounds.width/2 - 75, y: 175, width: 150, height: 50))
        label.font = Fonts.score
        label.textAlignment = .Center
        self.label = label
        view.addSubview(label)
        
        // Grade Label
        
        let gradeLabel = UILabel(frame: CGRect(x: view.frame.width/2 - 200, y: 300, width: 400, height: 50))
        let grade = (Float(self.score) / Float(self.numberOfQuestions)) * 100
        gradeLabel.textAlignment = .Center
        gradeLabel.font = Fonts.header
        gradeLabel.text = String(format:"You scored %.0f %%", grade)
        self.view.addSubview(gradeLabel)
        
        let commentLabel = UILabel(frame: CGRect(x: 50, y: 350, width: view.bounds.width - 100, height: 90))
        commentLabel.textAlignment = .Center
        commentLabel.font = Fonts.provinceHeader
        commentLabel.numberOfLines = 0
        if grade == 100 {
            commentLabel.text = "Perfect!"
        } else if  grade > 85 {
            commentLabel.text = "Great job!"
        } else if  grade > 75 {
            commentLabel.text = "Nice, keep practicing!"
        } else  {
            commentLabel.text = "Needs more work, keep practicing!"
        }
        
        self.view.addSubview(commentLabel)


        // Retake Test Button

        let button = UIButton(frame: CGRect(x: view.frame.width/2 - 100, y: 450, width: 200, height: 40))
        button.clipsToBounds = true
        button.layer.cornerRadius = 20.0
        button.backgroundColor = Color.lightgrey
        button.setTitle( "Retake Test", forState: .Normal)
        button.setTitleColor(Color.white, forState: .Normal)
        button.titleLabel?.lineBreakMode = NSLineBreakMode.ByWordWrapping
        button.titleLabel?.font = Fonts.header
        button.titleLabel?.textAlignment = .Left
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 31, bottom: 0, right: 31)
        self.button = button
        self.view.addSubview(button)
        button.addTarget(self, action:  #selector(handleButton), forControlEvents: .TouchUpInside)
    }

    func handleButton()
    {
        self.button.backgroundColor = Color.green
        let provinceViewController = ProvincesViewController()
        presentViewController(provinceViewController, animated: true, completion: nil)    
    }

}
