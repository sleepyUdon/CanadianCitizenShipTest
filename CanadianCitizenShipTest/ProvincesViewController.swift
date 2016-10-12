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
  
    var province = ""

    
    /// ViewDid Load
    override func viewDidLoad() {
        prepareView()
    }
    
    
    /// prepare View
    
    func prepareView()
        
    {
        view.backgroundColor = UIColor.white
        
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone {

        let redtopBar = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 20))
        redtopBar.backgroundColor = Color.red
        view.addSubview(redtopBar)

        let navigationBar = UILabel(frame: CGRect(x: 0, y: 20, width: view.bounds.width, height: 30))
        navigationBar.text = "Canadian Citizenship Test"
        navigationBar.textColor = Color.white
        navigationBar.textAlignment = .center
        navigationBar.backgroundColor = Color.red
        navigationBar.font = Fonts.canada
            view.addSubview(navigationBar)
            let label = UILabel(frame: CGRect(x: 0, y: 50, width: view.frame.width, height: 20))
            label.text = "Select a Province"
            label.textAlignment = .center
            label.font = Fonts.header
            view.addSubview(label)

        } else {
            let redtopBar = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 20))
            redtopBar.backgroundColor = Color.red
            view.addSubview(redtopBar)
            
            let navigationBar = UILabel(frame: CGRect(x: 0, y: 20, width: view.bounds.width, height: 60))
            navigationBar.text = "Canadian Citizenship Test"
            navigationBar.textColor = Color.white
            navigationBar.textAlignment = .center
            navigationBar.backgroundColor = Color.red
            navigationBar.font = Fonts.canadaLarge
            view.addSubview(navigationBar)
            let label = UILabel(frame: CGRect(x: 0, y: 60, width: view.frame.width, height: 100))
            label.text = "Select a Province"
            label.textAlignment = .center
            label.font = Fonts.headerLarge
            view.addSubview(label)

        }
        
        let iconSize = view.frame.width/6.4 // heigth and width of icons
        let verticalSpacing = view.frame.height/5 // vertical spacing between icons
        let horizontalSpacing = view.frame.width/4 // horizontal spacing between icons
        
        

        
        /// Alberta
        
        let AlbertaImage: UIImage? = UIImage(named:"Alberta.png")
        let buttonAlberta = UIButton(frame: CGRect(x: horizontalSpacing  - iconSize/2, y: verticalSpacing - iconSize/2 , width: iconSize, height: iconSize))
        buttonAlberta.setImage(AlbertaImage, for: UIControlState())
        view.addSubview(buttonAlberta)
        buttonAlberta.addTarget(self, action:  #selector(handleAlbertaButton), for: .touchUpInside)
        
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone {
            let albertaLabel = UILabel(frame: CGRect(x: horizontalSpacing  - iconSize/2, y: verticalSpacing + iconSize/2 + 10.0, width: iconSize, height: 20.0))
            albertaLabel.font = Fonts.provinceName
            albertaLabel.text = "Alberta"
            albertaLabel.textColor = Color.grey
            albertaLabel.textAlignment = .center
            view.addSubview(albertaLabel)
        } else {
            let albertaLabel = UILabel(frame: CGRect(x: horizontalSpacing  - iconSize/2, y: verticalSpacing + iconSize/2 + 10.0, width: iconSize, height: 60.0))
            albertaLabel.font = Fonts.provinceNameLarge
            albertaLabel.text = "Alberta"
            albertaLabel.textColor = Color.grey
            albertaLabel.textAlignment = .center
            view.addSubview(albertaLabel)
        }

        /// British Columbia

        let BritishColumbiaImage: UIImage? = UIImage(named:"British Columbia.png")
        let buttonBritishColumbia = UIButton(frame: CGRect(x: horizontalSpacing * 2  - iconSize/2, y:  verticalSpacing - iconSize/2, width: iconSize, height: iconSize))
        buttonBritishColumbia.setImage(BritishColumbiaImage, for: UIControlState())
        view.addSubview(buttonBritishColumbia)
        buttonBritishColumbia.addTarget(self, action:  #selector(handleBritishColumbiaButton), for: .touchUpInside)
        
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone {
            let BritishColumbiaLabel = UILabel(frame: CGRect(x: horizontalSpacing * 2 - 10.0 - iconSize/2, y:  verticalSpacing + iconSize/2 + 10.0, width: iconSize + 20.0, height: 40.0))
            BritishColumbiaLabel.font = Fonts.provinceName
            BritishColumbiaLabel.text = "British Columbia"
            BritishColumbiaLabel.numberOfLines = 0
            BritishColumbiaLabel.textColor = Color.grey
            BritishColumbiaLabel.textAlignment = .center
            view.addSubview(BritishColumbiaLabel)
        } else {
            let BritishColumbiaLabel = UILabel(frame: CGRect(x: horizontalSpacing * 2 - 10.0 - iconSize/2, y:  verticalSpacing + iconSize/2 + 10.0, width: iconSize + 20.0, height: 60.0))
            BritishColumbiaLabel.font = Fonts.provinceNameLarge
            BritishColumbiaLabel.text = "British Columbia"
            BritishColumbiaLabel.numberOfLines = 0
            BritishColumbiaLabel.textColor = Color.grey
            BritishColumbiaLabel.textAlignment = .center
            view.addSubview(BritishColumbiaLabel)
        }
        
        /// Manitoba
        
        let ManitobaImage: UIImage? = UIImage(named:"Manitoba.png")
        let buttonManitoba = UIButton(frame: CGRect(x: horizontalSpacing * 3 - iconSize/2, y: verticalSpacing - iconSize/2, width: iconSize, height: iconSize))
        buttonManitoba.setImage(ManitobaImage, for: UIControlState())
        view.addSubview(buttonManitoba)
        buttonManitoba.addTarget(self, action:  #selector(handleManitobaButton), for: .touchUpInside)
        
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone {
            let manitobaLabel = UILabel(frame: CGRect(x: horizontalSpacing * 3 - iconSize/2 - 10.0, y: verticalSpacing + iconSize/2 + 10.0, width: iconSize + 20.0, height: 20.0))
            manitobaLabel.font = Fonts.provinceName
            manitobaLabel.text = "Manitoba"
            manitobaLabel.textColor = Color.grey
            manitobaLabel.textAlignment = .center
            view.addSubview(manitobaLabel)
        } else {
            let manitobaLabel = UILabel(frame: CGRect(x: horizontalSpacing * 3 - iconSize/2 - 10.0, y: verticalSpacing + iconSize/2 + 10.0, width: iconSize + 20.0, height: 60.0))
            manitobaLabel.font = Fonts.provinceNameLarge
            manitobaLabel.text = "Manitoba"
            manitobaLabel.textColor = Color.grey
            manitobaLabel.textAlignment = .center
            view.addSubview(manitobaLabel)
        }
        
        /// New Foundland and Labrador

        let NFLmage: UIImage? = UIImage(named:"NewfoundlandLabrador.png")
        let buttonNFL = UIButton(frame: CGRect(x: horizontalSpacing - iconSize/2, y:  verticalSpacing * 2 - iconSize/2, width: iconSize, height: iconSize))
        buttonNFL.setImage(NFLmage, for: UIControlState())
        view.addSubview(buttonNFL)
        buttonNFL.addTarget(self, action:  #selector(handleNFLButton), for: .touchUpInside)
        
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone {
            let NFLLabel = UILabel(frame: CGRect(x: horizontalSpacing  - 45, y:  verticalSpacing * 2 + iconSize/2 + 10.0, width: 90.0, height: 40.0))
            NFLLabel.text = "Newfoundland and Labrador"
            NFLLabel.font = Fonts.provinceName
            NFLLabel.numberOfLines = 0
            NFLLabel.textColor = Color.grey
            NFLLabel.textAlignment = .center
            view.addSubview(NFLLabel)
        } else {
            let NFLLabel = UILabel(frame: CGRect(x: horizontalSpacing  - 45, y:  verticalSpacing * 2 + iconSize/2 + 10.0, width: 90.0, height: 60.0))
            NFLLabel.text = "Newfoundland and Labrador"
            NFLLabel.font = Fonts.provinceNameLarge
            NFLLabel.numberOfLines = 0
            NFLLabel.textColor = Color.grey
            NFLLabel.textAlignment = .center
            view.addSubview(NFLLabel)
        }
        
        // New Brunswick
        
        let NBImage: UIImage? = UIImage(named:"New Brunswick.png")
        let buttonNB = UIButton(frame: CGRect(x: horizontalSpacing * 2 - iconSize/2, y:  verticalSpacing  * 2 - iconSize/2, width: iconSize, height: iconSize))
        buttonNB.setImage(NBImage, for: UIControlState())
        view.addSubview(buttonNB)
        buttonNB.addTarget(self, action:  #selector(handleNBButton), for: .touchUpInside)

        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone {
            let NBLLabel = UILabel(frame: CGRect(x: horizontalSpacing * 2 - iconSize/2 - 10.0, y:verticalSpacing * 2 + iconSize/2 + 10.0, width: iconSize + 20.0, height: 40.0))
            NBLLabel.font = Fonts.provinceName
            NBLLabel.numberOfLines = 0
            NBLLabel.text = "New Brunswick"
            NBLLabel.textColor = Color.grey
            NBLLabel.textAlignment = .center
            view.addSubview(NBLLabel)
        } else {
            let NBLLabel = UILabel(frame: CGRect(x: horizontalSpacing * 2 - iconSize/2 - 10.0, y:verticalSpacing * 2 + iconSize/2 + 10.0, width: iconSize + 20.0, height: 60.0))
            NBLLabel.font = Fonts.provinceNameLarge
            NBLLabel.numberOfLines = 0
            NBLLabel.text = "New Brunswick"
            NBLLabel.textColor = Color.grey
            NBLLabel.textAlignment = .center
            view.addSubview(NBLLabel)
        }
        
        // Northern Territories

        let NTImage: UIImage? = UIImage(named:"NorthernTerritories.png")
        let buttonNT = UIButton(frame: CGRect(x: horizontalSpacing * 3  - iconSize/2, y:  verticalSpacing * 2 - iconSize/2, width: iconSize, height: iconSize))
        buttonNT.setImage(NTImage, for: UIControlState())
        view.addSubview(buttonNT)
        buttonNT.addTarget(self, action:  #selector(handleNTButton), for: .touchUpInside)
        
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone {
            let NTLLabel = UILabel(frame: CGRect(x: horizontalSpacing * 3  - iconSize/2 - 10.0, y:verticalSpacing * 2 + iconSize/2 + 10.0, width: iconSize + 20.0, height: 40.0))
            NTLLabel.font = Fonts.provinceName
            NTLLabel.numberOfLines = 0
            NTLLabel.text = "Northern Territories"
            NTLLabel.textColor = Color.grey
            NTLLabel.textAlignment = .center
            view.addSubview(NTLLabel)

        } else {
            let NTLLabel = UILabel(frame: CGRect(x: horizontalSpacing * 3  - iconSize/2 - 10.0, y:verticalSpacing * 2 + iconSize/2 + 10.0, width: iconSize + 20.0, height: 60.0))
            NTLLabel.font = Fonts.provinceNameLarge
            NTLLabel.numberOfLines = 0
            NTLLabel.text = "Northern Territories"
            NTLLabel.textColor = Color.grey
            NTLLabel.textAlignment = .center
            view.addSubview(NTLLabel)
        }
        
        // Nunavut

        let NunavutImage: UIImage? = UIImage(named:"Nunavut.png")
        let buttonNunavut = UIButton(frame: CGRect(x: horizontalSpacing  - iconSize/2, y:  verticalSpacing * 3 - iconSize/2, width: iconSize, height: iconSize))
        buttonNunavut.setImage(NunavutImage, for: UIControlState())
        view.addSubview(buttonNunavut)
        buttonNunavut.addTarget(self, action:  #selector(handleNunavutButton), for: .touchUpInside)
        
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone {
            let NunavutLLabel = UILabel(frame: CGRect(x: horizontalSpacing  - iconSize/2, y: verticalSpacing * 3 + iconSize/2 + 10.0, width: iconSize, height: 20.0))
            NunavutLLabel.text = "Nunavut"
            NunavutLLabel.textColor = Color.grey
            NunavutLLabel.textAlignment = .center
            view.addSubview(NunavutLLabel)
            NunavutLLabel.font = Fonts.provinceName
        } else {
            let NunavutLLabel = UILabel(frame: CGRect(x: horizontalSpacing  - iconSize/2, y: verticalSpacing * 3 + iconSize/2 + 10.0, width: iconSize, height: 20.0))
            NunavutLLabel.font = Fonts.provinceNameLarge
            NunavutLLabel.text = "Nunavut"
            NunavutLLabel.textColor = Color.grey
            NunavutLLabel.textAlignment = .center
            view.addSubview(NunavutLLabel)
        }
        
        // Nova Scotia

        let NSImage: UIImage? = UIImage(named:"NovaScotia.png")
        let buttonNS = UIButton(frame: CGRect(x: horizontalSpacing * 2  - iconSize/2, y:  verticalSpacing * 3 - iconSize/2, width: iconSize, height: iconSize))
        buttonNS.setImage(NSImage, for: UIControlState())
        view.addSubview(buttonNS)
        buttonNS.addTarget(self, action:  #selector(handleNSButton), for: .touchUpInside)
        
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone {
            let NSLabel = UILabel(frame: CGRect(x: horizontalSpacing * 2  - iconSize/2 - 10.0, y: verticalSpacing * 3 + iconSize/2 + 10.0, width: iconSize + 20.0, height: 20.0))
            NSLabel.font = Fonts.provinceName
            NSLabel.numberOfLines = 0
            NSLabel.text = "Nova Scotia"
            NSLabel.textColor = Color.grey
            NSLabel.textAlignment = .center
            view.addSubview(NSLabel)
        } else {
            let NSLabel = UILabel(frame: CGRect(x: horizontalSpacing * 2  - iconSize/2 - 10.0, y: verticalSpacing * 3 + iconSize/2 + 10.0, width: iconSize + 20.0, height: 40.0))
            NSLabel.font = Fonts.provinceNameLarge
            NSLabel.numberOfLines = 0
            NSLabel.text = "Nova Scotia"
            NSLabel.textColor = Color.grey
            NSLabel.textAlignment = .center
            view.addSubview(NSLabel)
        }
        
        // Ontario

        let OntarioImage: UIImage? = UIImage(named:"Ontario.png")
        let buttonOntario = UIButton(frame: CGRect(x: horizontalSpacing * 3 - iconSize/2, y:verticalSpacing * 3 - iconSize/2, width: iconSize, height: iconSize))
        buttonOntario.setImage(OntarioImage, for: UIControlState())
        view.addSubview(buttonOntario)
        buttonOntario.addTarget(self, action:  #selector(handleOntarioButton), for: .touchUpInside)
        
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone {
            let OntarioLabel = UILabel(frame: CGRect(x: horizontalSpacing * 3 - iconSize/2, y:  verticalSpacing * 3 + iconSize/2 + 10.0, width: iconSize, height: 20.0))
            OntarioLabel.font = Fonts.provinceName
            OntarioLabel.text = "Ontario"
            OntarioLabel.textColor = Color.grey
            OntarioLabel.textAlignment = .center
            view.addSubview(OntarioLabel)
        } else {
            let OntarioLabel = UILabel(frame: CGRect(x: horizontalSpacing * 3 - iconSize/2, y:  verticalSpacing * 3 + iconSize/2 + 10.0, width: iconSize, height: 20.0))
            OntarioLabel.font = Fonts.provinceNameLarge
            OntarioLabel.text = "Ontario"
            OntarioLabel.textColor = Color.grey
            OntarioLabel.textAlignment = .center
            view.addSubview(OntarioLabel)
        }
        
        // Yukon

        let YukonImage: UIImage? = UIImage(named:"Yukon.png")
        let buttonYukon = UIButton(frame: CGRect(x: horizontalSpacing - iconSize/2, y: verticalSpacing * 4 - iconSize/2, width: iconSize, height: iconSize))
        buttonYukon.setImage(YukonImage, for: UIControlState())
        view.addSubview(buttonYukon)
        buttonYukon.addTarget(self, action:  #selector(handleYukonButton), for: .touchUpInside)
        
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone {
            let YukonLabel = UILabel(frame: CGRect(x: horizontalSpacing - iconSize/2, y: verticalSpacing * 4 + iconSize/2 + 10.0, width: iconSize, height: 20.0))
            YukonLabel.font = Fonts.provinceName
            YukonLabel.text = "Yukon"
            YukonLabel.textColor = Color.grey
            YukonLabel.textAlignment = .center
            view.addSubview(YukonLabel)
        } else {
            let YukonLabel = UILabel(frame: CGRect(x: horizontalSpacing - iconSize/2, y: verticalSpacing * 4 + iconSize/2 + 10.0, width: iconSize, height: 20.0))
            YukonLabel.font = Fonts.provinceNameLarge
            YukonLabel.text = "Yukon"
            YukonLabel.textColor = Color.grey
            YukonLabel.textAlignment = .center
            view.addSubview(YukonLabel)
        }
    }
    
    
    
    // MARK - button actions
    func handleAlbertaButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        numberQuestionVC.province = "Alberta"
        self.province = "Alberta"
        UserDefaults.standard.setValue(self.province, forKeyPath: "Province")
        present(numberQuestionVC, animated: true, completion: nil)
    }

    func handleBritishColumbiaButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        numberQuestionVC.province = "British Columbia"
        self.province = "BritishColumbia"
        UserDefaults.standard.setValue(self.province, forKeyPath: "Province")
        present(numberQuestionVC, animated: true, completion: nil)
    }
    
    func handleManitobaButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        numberQuestionVC.province = "Manitoba"
        self.province = "Manitoba"
        UserDefaults.standard.setValue(self.province, forKeyPath: "Province")
        present(numberQuestionVC, animated: true, completion: nil)
    }
    
    func handleNFLButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        numberQuestionVC.province = "Newfoundland and Labrador"
        self.province = "NewfoundlandLabrador"
        UserDefaults.standard.setValue(self.province, forKeyPath: "Province")
        present(numberQuestionVC, animated: true, completion: nil)
    }
    
    func handleNBButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        numberQuestionVC.province = "New Brunswick"
        self.province = "NewBrunswick"
        UserDefaults.standard.setValue(self.province, forKeyPath: "Province")
        present(numberQuestionVC, animated: true, completion: nil)
    }
    
    func handleNTButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        numberQuestionVC.province = "Northern Territories"
        self.province = "NorthernTerritories"
        UserDefaults.standard.setValue(self.province, forKeyPath: "Province")
        present(numberQuestionVC, animated: true, completion: nil)
    }
    
    func handleNunavutButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        numberQuestionVC.province = "Nunavut"
        self.province = "Nunavut"
        UserDefaults.standard.setValue(self.province, forKeyPath: "Province")
        present(numberQuestionVC, animated: true, completion: nil)
    }
    
    func handleNSButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        numberQuestionVC.province = "Nova Scotia"
        self.province = "NovaScotia"
        UserDefaults.standard.setValue(self.province, forKeyPath: "Province")
        present(numberQuestionVC, animated: true, completion: nil)
    }
    
    func handleOntarioButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        numberQuestionVC.province = "Ontario"
        self.province = "Ontario"
        UserDefaults.standard.setValue(self.province, forKeyPath: "Province")
        present(numberQuestionVC, animated: true, completion: nil)
    }
    
    func handleYukonButton()
    {
        let numberQuestionVC = NumberQuestionsViewController()
        numberQuestionVC.province = "Yukon"
        self.province = "Yukon"
        UserDefaults.standard.setValue(self.province, forKeyPath: "Province")
        present(numberQuestionVC, animated: true, completion: nil)

    }
    
}





