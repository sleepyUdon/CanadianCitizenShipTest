//
//  ProvincesViewController.swift
//  CanadianCitizenShipTest
//
//  Created by Viviane Chan on 2016-09-07.
//  Copyright © 2016 Komrad. All rights reserved.
//

import UIKit

class ProvincesViewController: UIViewController {
    
    
    /// Set properties
  

    
    /// ViewDid Load
    override func viewDidLoad() {
        prepareView()
    }
    
    
    /// prepare View
    
    func prepareView()
    {
        
        let iconSize = CGFloat(80.0) // heigth and width of icons
        let verticalSpacing = CGFloat(188.0) // vertical spacing between icons
        let horizontalSpacing = CGFloat(135.0) // horizontal spacing between icons
        
        let provinceView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height + 300))
        view.backgroundColor = UIColor.whiteColor()
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        scrollView.bounces = true
        scrollView.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        scrollView.autoresizingMask = UIViewAutoresizing.FlexibleHeight
        scrollView.contentSize = provinceView.bounds.size
        view.addSubview(scrollView)
        scrollView.addSubview(provinceView)

        let label = UILabel(frame: CGRect(x: 33, y: 94, width: 200, height: 30))
        label.text = "Select a Province"
        label.font = Fonts.header
        provinceView.addSubview(label)
        
        let AlbertaImage: UIImage? = UIImage(named:"Alberta.png")
        let buttonAlberta = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing, width: iconSize, height: iconSize))
        buttonAlberta.setImage(AlbertaImage, forState: .Normal)
        provinceView.addSubview(buttonAlberta)
        buttonAlberta.addTarget(self, action:  #selector(handleAlbertaButton), forControlEvents: .TouchUpInside)
        
        let BritishColumbiaImage: UIImage? = UIImage(named:"British Columbia.png")
        let buttonBritishColumbia = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2, y: verticalSpacing, width: iconSize, height: iconSize))
        buttonBritishColumbia.setImage(BritishColumbiaImage, forState: .Normal)
        provinceView.addSubview(buttonBritishColumbia)
        buttonBritishColumbia.addTarget(self, action:  #selector(handleBritishColumbiaButton), forControlEvents: .TouchUpInside)
        
        let ManitobaImage: UIImage? = UIImage(named:"Manitoba.png")
        let buttonManitoba = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 + horizontalSpacing, y: verticalSpacing, width: iconSize, height: iconSize))
        buttonManitoba.setImage(ManitobaImage, forState: .Normal)
        provinceView.addSubview(buttonManitoba)
        buttonManitoba.addTarget(self, action:  #selector(handleManitobaButton), forControlEvents: .TouchUpInside)

        
        let NFLmage: UIImage? = UIImage(named:"NewfoundlandLabrador.png")
        let buttonNFL = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing*2, width: iconSize, height: iconSize))
        buttonNFL.setImage(NFLmage, forState: .Normal)
        provinceView.addSubview(buttonNFL)
        buttonNFL.addTarget(self, action:  #selector(handleNFLButton), forControlEvents: .TouchUpInside)

    }
    
    
    
    // MARK - button actions
    func handleAlbertaButton()
    {
    }

    func handleBritishColumbiaButton()
    {
    }
    
    func handleManitobaButton()
    {
    }
    
    func handleNFLButton()
    {
    }
}





