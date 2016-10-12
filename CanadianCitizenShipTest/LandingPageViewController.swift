//
//  LandingPageViewController.swift
//  CanadianCitizenShipTest
//
//  Created by Viviane Chan on 2016-09-12.
//  Copyright © 2016 Komrad. All rights reserved.
//

import UIKit

class LandingPageViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.button.layer.cornerRadius = 20.0
        self.button.layer.borderColor = Color.white.cgColor
        self.button.layer.borderWidth = 2.0


    }

    @IBAction func handleButton(_ sender: AnyObject) {
        let provincesViewController = ProvincesViewController()
        present(provincesViewController, animated: true, completion: nil)
    }
}
