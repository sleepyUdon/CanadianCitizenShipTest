//
//  ScoreViewController.swift
//  CanadianCitizenShipTest
//
//  Created by Viviane Chan on 2016-09-10.
//  Copyright © 2016 Komrad. All rights reserved.
//

import UIKit
import MessageUI

class ScoreViewController: UIViewController, MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate {
    
    /// set properties
    
    var label = UILabel()
    var counterView = CounterView()
    var button = UIButton()
    var sharebutton = UIButton()
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
    
        view.backgroundColor = UIColor.white
        
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone {

        let counterView = CounterView(frame: CGRect(x: view.bounds.width/2 - 100, y: 100, width: 200, height: 200))
        counterView.backgroundColor = UIColor.white
        self.counterView = counterView
        view.addSubview(counterView)
        
        
        let label = UILabel(frame: CGRect(x: view.bounds.width/2 - 75, y: 175, width: 150, height: 50))
        label.font = Fonts.score
        label.textAlignment = .center
        self.label = label
        view.addSubview(label)
        
        // Grade Label
        
        let gradeLabel = UILabel(frame: CGRect(x: view.frame.width/2 - 200, y: 300, width: 400, height: 50))
        let grade = (Float(self.score) / Float(self.numberOfQuestions)) * 100
        gradeLabel.textAlignment = .center
        gradeLabel.font = Fonts.header
        gradeLabel.text = String(format:"You scored %.0f %%", grade)
        self.view.addSubview(gradeLabel)
        
        let commentLabel = UILabel(frame: CGRect(x: 50, y: 350, width: view.bounds.width - 100, height: 90))
        commentLabel.textAlignment = .center
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
        button.setTitle( "Retake Test", for: UIControlState())
        button.setTitleColor(Color.white, for: UIControlState())
        button.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        button.titleLabel?.font = Fonts.header
        button.titleLabel?.textAlignment = .left
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 31, bottom: 0, right: 31)
        self.button = button
        self.view.addSubview(button)
        button.addTarget(self, action:  #selector(handleButton), for: .touchUpInside)
            
            // Share with a Friend Button
            let sharebutton = UIButton(frame: CGRect(x: view.frame.width/2 - 100, y: 500, width: 200, height: 40))
            sharebutton.clipsToBounds = true
            sharebutton.layer.cornerRadius = 20.0
            sharebutton.backgroundColor = Color.lightgrey
            sharebutton.setTitle( "Refer app to a friend", for: UIControlState())
            sharebutton.setTitleColor(Color.white, for: UIControlState())
            sharebutton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
            sharebutton.titleLabel?.font = Fonts.header
            sharebutton.titleLabel?.textAlignment = .center
            sharebutton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
            self.sharebutton = sharebutton
            self.view.addSubview(sharebutton)
            sharebutton.addTarget(self, action:  #selector(handleShareButton), for: .touchUpInside)
    
        } else {
            
            let counterView = CounterView(frame: CGRect(x: view.bounds.width/2 - 200, y: 150, width: 400, height: 400))
            counterView.backgroundColor = UIColor.white
            self.counterView = counterView
            view.addSubview(counterView)
            
            
            let label = UILabel(frame: CGRect(x: view.bounds.width/2 - 150, y: 300, width: 300, height: 100))
            label.font = Fonts.score
            label.textAlignment = .center
            self.label = label
            view.addSubview(label)
            
            // Grade Label
            
            let gradeLabel = UILabel(frame: CGRect(x: view.frame.width/2 - 400, y: 550, width: 800, height: 50))
            let grade = (Float(self.score) / Float(self.numberOfQuestions)) * 200
            gradeLabel.textAlignment = .center
            gradeLabel.font = Fonts.headerLarge
            gradeLabel.text = String(format:"You scored %.0f %%", grade)
            self.view.addSubview(gradeLabel)
            
            let commentLabel = UILabel(frame: CGRect(x: 100, y: 600, width: view.bounds.width - 200, height: 100))
            commentLabel.textAlignment = .center
            commentLabel.font = Fonts.provinceHeaderLarge
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
            
            let button = UIButton(frame: CGRect(x: view.frame.width/2 - 200, y: 700, width: 400, height: 80))
            button.clipsToBounds = true
            button.layer.cornerRadius = 40.0
            button.backgroundColor = Color.lightgrey
            button.setTitle( "Retake Test", for: UIControlState())
            button.setTitleColor(Color.white, for: UIControlState())
            button.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
            button.titleLabel?.font = Fonts.headerLarge
            button.titleLabel?.textAlignment = .left
            button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 62, bottom: 0, right: 62)
            self.button = button
            self.view.addSubview(button)
            button.addTarget(self, action:  #selector(handleButton), for: .touchUpInside)
            
            // Share with a Friend Button
            let sharebutton = UIButton(frame: CGRect(x: view.frame.width/2 - 200, y: 800, width: 400, height: 80))
            sharebutton.clipsToBounds = true
            sharebutton.layer.cornerRadius = 40.0
            sharebutton.backgroundColor = Color.lightgrey
            sharebutton.setTitle( "Refer app to a friend", for: UIControlState())
            sharebutton.setTitleColor(Color.white, for: UIControlState())
            sharebutton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
            sharebutton.titleLabel?.font = Fonts.headerLarge
            sharebutton.titleLabel?.textAlignment = .left
            sharebutton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 62, bottom: 0, right: 62)
            self.sharebutton = sharebutton
            self.view.addSubview(sharebutton)
            sharebutton.addTarget(self, action:  #selector(handleShareButton), for: .touchUpInside)
        }
    }

    func handleButton()
    {
        self.button.backgroundColor = Color.green
        let provinceViewController = ProvincesViewController()
        present(provinceViewController, animated: true, completion: nil)    
    }

    func handleShareButton()
    {
        self.sharebutton.backgroundColor = Color.green
        let alertController = UIAlertController(title: "Refer app to a friend", message: "", preferredStyle: .alert)
        
        // send email
        let emailAction = UIAlertAction(title: "Yes", style: UIAlertActionStyle.default) {
            UIAlertAction in
            let email = MFMailComposeViewController()
            email.mailComposeDelegate = self
            email.setSubject("Canadian Citizenship test")
            email.setMessageBody("Hi, Check out this app for the Canadian Citizenship Test: https://itunes.apple.com/ca/app/canadian-citizenship-test/id1153888409?mt=8", isHTML: true)
            self.present(email, animated: true){
                self.sharebutton.backgroundColor = Color.lightgrey
            }
        }
        alertController.addAction(emailAction)
        
        // cancel
        let cancelAction = UIAlertAction(title: "No", style: UIAlertActionStyle.cancel) {
            UIAlertAction in
            self.sharebutton.backgroundColor = Color.lightgrey
        }
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        dismiss(animated: true, completion: nil)
    }
    
}



