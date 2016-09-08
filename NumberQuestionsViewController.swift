//
//  NumberQuestionsViewController.swift
//  CanadianCitizenShipTest
//
//  Created by Viviane Chan on 2016-09-07.
//  Copyright © 2016 Komrad. All rights reserved.
//

import UIKit

class NumberQuestionsViewController: UIViewController {
    
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
        let horizontalSpacing = CGFloat(135.0) // horizontal spacing between icons

        view.backgroundColor = UIColor.whiteColor()
        
        let label = UILabel(frame: CGRect(x: 33, y: 94, width: 400, height: 30))
        label.text = "Select Number of Questions"
        label.font = Fonts.header
        view.addSubview(label)
        
        
        /// 10 Button
        
        let button10 = UIButton(frame: CGRect(x: view.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing*2 - 30.0, width: iconSize, height: iconSize))
        button10.backgroundColor = Color.lightgrey
        button10.layer.cornerRadius = iconSize/2
        button10.setTitle("10", forState: .Normal)
        button10.setTitleColor(Color.black, forState: UIControlState.Normal)
        button10.titleLabel!.font = Fonts.number
        button10.titleLabel?.textAlignment = .Center
        view.addSubview(button10)
        button10.addTarget(self, action:  #selector(handleButton10), forControlEvents: .TouchUpInside)
        
        // 20 Button
        
        let button20 = UIButton(frame: CGRect(x: view.frame.width/2 - iconSize/2, y: verticalSpacing*2 - 30.0, width: iconSize, height: iconSize))
        button20.backgroundColor = Color.lightgrey
        button20.layer.cornerRadius = iconSize/2
        button20.setTitle("20", forState: .Normal)
        button20.setTitleColor(Color.black, forState: UIControlState.Normal)
        button20.titleLabel!.font = Fonts.number
        button20.titleLabel?.textAlignment = .Center
        view.addSubview(button20)
        button20.addTarget(self, action:  #selector(handleButton20), forControlEvents: .TouchUpInside)
        
        // 30 Button
        
        let button30 = UIButton(frame: CGRect(x: view.frame.width/2 - iconSize/2 + horizontalSpacing, y: verticalSpacing*2 - 30.0, width: iconSize, height: iconSize))
        button30.backgroundColor = Color.lightgrey
        button30.layer.cornerRadius = iconSize/2
        button30.setTitle("30", forState: .Normal)
        button30.setTitleColor(Color.black, forState: UIControlState.Normal)
        button30.titleLabel!.font = Fonts.number
        button30.titleLabel?.textAlignment = .Center
        view.addSubview(button30)
        button30.addTarget(self, action:  #selector(handleButton30), forControlEvents: .TouchUpInside)
        
        
        // 50 Button
        
        let button50 = UIButton(frame: CGRect(x: view.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing*3 - 30.0, width: iconSize, height: iconSize))
        button50.backgroundColor = Color.lightgrey
        button50.layer.cornerRadius = iconSize/2
        button50.setTitle("50", forState: .Normal)
        button50.setTitleColor(Color.black, forState: UIControlState.Normal)
        button50.titleLabel!.font = Fonts.number
        button50.titleLabel?.textAlignment = .Center
        view.addSubview(button50)
        button50.addTarget(self, action:  #selector(handleButton50), forControlEvents: .TouchUpInside)
        
        
        // 100 Button
        
        let button100 = UIButton(frame: CGRect(x: view.frame.width/2 - iconSize/2, y: verticalSpacing*3 - 30.0, width: iconSize, height: iconSize))
        button100.backgroundColor = Color.lightgrey
        button100.layer.cornerRadius = iconSize/2
        button100.setTitle("100", forState: .Normal)
        button100.setTitleColor(Color.black, forState: UIControlState.Normal)
        button100.titleLabel!.font = Fonts.number
        button100.titleLabel?.textAlignment = .Center
        view.addSubview(button100)
        button100.addTarget(self, action:  #selector(handleButton100), forControlEvents: .TouchUpInside)
        
        
        // Unlimited Button
        
        let buttonUnlimited = UIButton(frame: CGRect(x: view.frame.width/2 - iconSize/2 + horizontalSpacing, y: verticalSpacing*3 - 30.0, width: iconSize, height: iconSize))
        buttonUnlimited.backgroundColor = Color.lightgrey
        buttonUnlimited.layer.cornerRadius = iconSize/2
        buttonUnlimited.titleLabel?.numberOfLines = 0
        buttonUnlimited.setTitle("Until you feel so Canadian", forState: .Normal)
        buttonUnlimited.setTitleColor(Color.black, forState: UIControlState.Normal)
        buttonUnlimited.titleLabel!.font = UIFont (name: "Avenir-Heavy", size: 14)
        buttonUnlimited.titleLabel?.textAlignment = .Center
        view.addSubview(buttonUnlimited)
        buttonUnlimited.addTarget(self, action:  #selector(handleButtonunlimited), forControlEvents: .TouchUpInside)
        
        
        // Landscape Image
        
        let landscapeView = UIImageView(frame: CGRect(x: 0, y: view.frame.height - 200.0, width: view.frame.width, height: 200.0))
        view.addSubview(landscapeView)
        let lakeImage = UIImage(named:"lake.png")
        landscapeView.image = lakeImage
        landscapeView.alpha = 0

        UIImageView.animateWithDuration(3.0, animations: {
            landscapeView.alpha = 1
            }, completion: nil)
    }
    
    
    func handleButton10()
    {
    }
    
    func handleButton20()
    {
    }
    
    func handleButton30()
    {
    }
    
    func handleButton50()
    {
    }
    
    func handleButton100()
    {
    }
    
    func handleButtonunlimited()
    {
    }

}
