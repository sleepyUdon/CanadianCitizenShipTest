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
        let verticalSpacing = CGFloat(150.0) // vertical spacing between icons
        let horizontalSpacing = CGFloat(135.0) // horizontal spacing between icons
        
        let provinceView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height + 300))
        view.backgroundColor = UIColor.whiteColor()
        
        view.addSubview(provinceView)

        let label = UILabel(frame: CGRect(x: 33, y: 70, width: 200, height: 30))
        label.text = "Select a Province"
        label.font = Fonts.header
        provinceView.addSubview(label)
        
        /// Alberta
        
        let AlbertaImage: UIImage? = UIImage(named:"Alberta.png")
        let buttonAlberta = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing - 30.0 , width: iconSize, height: iconSize))
        buttonAlberta.setImage(AlbertaImage, forState: .Normal)
        provinceView.addSubview(buttonAlberta)
        buttonAlberta.addTarget(self, action:  #selector(handleAlbertaButton), forControlEvents: .TouchUpInside)
        
        let albertaLabel = UILabel(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing + 30.0, width: iconSize, height: iconSize))
        albertaLabel.text = "Alberta"
        albertaLabel.font = Fonts.provinceName
        albertaLabel.textColor = Color.grey
        albertaLabel.textAlignment = .Center
        provinceView.addSubview(albertaLabel)

        /// British Columbia

        let BritishColumbiaImage: UIImage? = UIImage(named:"British Columbia.png")
        let buttonBritishColumbia = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2, y: verticalSpacing - 30.0, width: iconSize, height: iconSize))
        buttonBritishColumbia.setImage(BritishColumbiaImage, forState: .Normal)
        provinceView.addSubview(buttonBritishColumbia)
        buttonBritishColumbia.addTarget(self, action:  #selector(handleBritishColumbiaButton), forControlEvents: .TouchUpInside)
        
        let BritishColumbiaLabel = UILabel(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2, y: verticalSpacing + 30.0, width: iconSize, height: iconSize))
        BritishColumbiaLabel.text = "British Columbia"
        BritishColumbiaLabel.font = Fonts.provinceName
        BritishColumbiaLabel.textColor = Color.grey
        BritishColumbiaLabel.textAlignment = .Center
        provinceView.addSubview(BritishColumbiaLabel)
        
        /// Manitoba
        
        let ManitobaImage: UIImage? = UIImage(named:"Manitoba.png")
        let buttonManitoba = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 + horizontalSpacing, y: verticalSpacing - 30.0, width: iconSize, height: iconSize))
        buttonManitoba.setImage(ManitobaImage, forState: .Normal)
        provinceView.addSubview(buttonManitoba)
        buttonManitoba.addTarget(self, action:  #selector(handleManitobaButton), forControlEvents: .TouchUpInside)
        
        let manitobaLabel = UILabel(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 + horizontalSpacing, y: verticalSpacing + 30.0, width: iconSize, height: iconSize))
        manitobaLabel.text = "Manitoba"
        manitobaLabel.font = Fonts.provinceName
        manitobaLabel.textColor = Color.grey
        manitobaLabel.textAlignment = .Center
        provinceView.addSubview(manitobaLabel)
        
        /// New Foundland and Labrador

        let NFLmage: UIImage? = UIImage(named:"NewfoundlandLabrador.png")
        let buttonNFL = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing*2 - 30.0, width: iconSize, height: iconSize))
        buttonNFL.setImage(NFLmage, forState: .Normal)
        provinceView.addSubview(buttonNFL)
        buttonNFL.addTarget(self, action:  #selector(handleNFLButton), forControlEvents: .TouchUpInside)
        
        let NFLLabel = UILabel(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 - horizontalSpacing - 20.0, y: verticalSpacing*2 + 40.0, width: 120.0, height: iconSize))
        NFLLabel.numberOfLines = 0
        NFLLabel.text = "Newfoundland and Labrador"
        NFLLabel.font = Fonts.provinceName
        NFLLabel.textColor = Color.grey
        NFLLabel.textAlignment = .Center
        provinceView.addSubview(NFLLabel)
        
        // New Brunswick
        
        let NBImage: UIImage? = UIImage(named:"New Brunswick.png")
        let buttonNB = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2, y: verticalSpacing*2 - 30.0, width: iconSize, height: iconSize))
        buttonNB.setImage(NBImage, forState: .Normal)
        provinceView.addSubview(buttonNB)
        buttonNB.addTarget(self, action:  #selector(handleNBButton), forControlEvents: .TouchUpInside)

        let NBLLabel = UILabel(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2, y: verticalSpacing*2 + 40.0, width: iconSize, height: iconSize))
        NBLLabel.numberOfLines = 0
        NBLLabel.text = "New Brunswick"
        NBLLabel.font = Fonts.provinceName
        NBLLabel.textColor = Color.grey
        NBLLabel.textAlignment = .Center
        provinceView.addSubview(NBLLabel)
        
        // Northern Territories

        let NTImage: UIImage? = UIImage(named:"NorthernTerritories.png")
        let buttonNT = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 + horizontalSpacing, y: verticalSpacing*2 - 30.0, width: iconSize, height: iconSize))
        buttonNT.setImage(NTImage, forState: .Normal)
        provinceView.addSubview(buttonNT)
        buttonNT.addTarget(self, action:  #selector(handleNTButton), forControlEvents: .TouchUpInside)
        
        let NTLLabel = UILabel(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 + horizontalSpacing, y: verticalSpacing*2 + 40.0, width: iconSize, height: iconSize))
        NTLLabel.numberOfLines = 0
        NTLLabel.text = "Nothern Territories"
        NTLLabel.font = Fonts.provinceName
        NTLLabel.textColor = Color.grey
        NTLLabel.textAlignment = .Center
        provinceView.addSubview(NTLLabel)
        
        // Nunavut

        let NunavutImage: UIImage? = UIImage(named:"Nunavut.png")
        let buttonNunavut = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing*3 - 30.0, width: iconSize, height: iconSize))
        buttonNunavut.setImage(NunavutImage, forState: .Normal)
        provinceView.addSubview(buttonNunavut)
        buttonNunavut.addTarget(self, action:  #selector(handleNunavutButton), forControlEvents: .TouchUpInside)
        
        let NunavutLLabel = UILabel(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing*3 + 40.0, width: iconSize, height: iconSize))
        NunavutLLabel.text = "Nunavut"
        NunavutLLabel.font = Fonts.provinceName
        NunavutLLabel.textColor = Color.grey
        NunavutLLabel.textAlignment = .Center
        provinceView.addSubview(NunavutLLabel)
        
        // Nova Scotia

        let NSImage: UIImage? = UIImage(named:"NovaScotia.png")
        let buttonNS = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2, y: verticalSpacing*3 - 30.0, width: iconSize, height: iconSize))
        buttonNS.setImage(NSImage, forState: .Normal)
        provinceView.addSubview(buttonNS)
        buttonNS.addTarget(self, action:  #selector(handleNSButton), forControlEvents: .TouchUpInside)
        
        let NSLabel = UILabel(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2, y: verticalSpacing*3 + 30.0, width: iconSize, height: iconSize))
        NSLabel.numberOfLines = 0
        NSLabel.text = "Nova Scotia"
        NSLabel.font = Fonts.provinceName
        NSLabel.textColor = Color.grey
        NSLabel.textAlignment = .Center
        provinceView.addSubview(NSLabel)
        
        // Ontario

        let OntarioImage: UIImage? = UIImage(named:"Ontario.png")
        let buttonOntario = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 + horizontalSpacing, y: verticalSpacing*3 - 30.0, width: iconSize, height: iconSize))
        buttonOntario.setImage(OntarioImage, forState: .Normal)
        provinceView.addSubview(buttonOntario)
        buttonOntario.addTarget(self, action:  #selector(handleOntarioButton), forControlEvents: .TouchUpInside)
        
        let OntarioLabel = UILabel(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 + horizontalSpacing, y: verticalSpacing*3 + 30.0, width: iconSize, height: iconSize))
        OntarioLabel.text = "Ontario"
        OntarioLabel.font = Fonts.provinceName
        OntarioLabel.textColor = Color.grey
        OntarioLabel.textAlignment = .Center
        provinceView.addSubview(OntarioLabel)
        
        // Yukon

        let YukonImage: UIImage? = UIImage(named:"Yukon.png")
        let buttonYukon = UIButton(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing*4 - 30.0, width: iconSize, height: iconSize))
        buttonYukon.setImage(YukonImage, forState: .Normal)
        provinceView.addSubview(buttonYukon)
        buttonYukon.addTarget(self, action:  #selector(handleYukonButton), forControlEvents: .TouchUpInside)
        
        let YukonLabel = UILabel(frame: CGRect(x: provinceView.frame.width/2 - iconSize/2 - horizontalSpacing, y: verticalSpacing*4 + 30.0, width: iconSize, height: iconSize))
        YukonLabel.text = "Yukon"
        YukonLabel.font = Fonts.provinceName
        YukonLabel.textColor = Color.grey
        YukonLabel.textAlignment = .Center
        provinceView.addSubview(YukonLabel)
    }
    
    
    
    // MARK - button actions
    func handleAlbertaButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        self.navigationController!.pushViewController(numberQuestionVC, animated: true)
    }

    func handleBritishColumbiaButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        self.navigationController!.pushViewController(numberQuestionVC, animated: true)

    }
    
    func handleManitobaButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        self.navigationController!.pushViewController(numberQuestionVC, animated: true)

    }
    
    func handleNFLButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        self.navigationController!.pushViewController(numberQuestionVC, animated: true)

    }
    
    func handleNBButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        self.navigationController!.pushViewController(numberQuestionVC, animated: true)

    }
    
    func handleNTButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        self.navigationController!.pushViewController(numberQuestionVC, animated: true)

    }
    
    func handleNunavutButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        self.navigationController!.pushViewController(numberQuestionVC, animated: true)

    }
    
    func handleNSButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        self.navigationController!.pushViewController(numberQuestionVC, animated: true)

    }
    
    func handleOntarioButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        self.navigationController!.pushViewController(numberQuestionVC, animated: true)

    }
    
    func handleYukonButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        self.navigationController!.pushViewController(numberQuestionVC, animated: true)

    }
    
}





