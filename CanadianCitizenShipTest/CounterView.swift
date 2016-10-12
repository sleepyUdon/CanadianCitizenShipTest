//
//  CounterView.swift
//  CanadianCitizenShipTest
//
//  Created by Viviane Chan on 2016-09-10.
//  Copyright © 2016 Komrad. All rights reserved.
//

import UIKit

let π:CGFloat = CGFloat(M_PI)

class CounterView: UIView {

    var outlineColor: UIColor = Color.green
    var counterColor: UIColor = Color.lightgrey
    
    override func draw(_ rect: CGRect) {
        
        let counter = UserDefaults.standard.integer(forKey: "userScore")
        let numberOfQuestions = UserDefaults.standard.integer(forKey: "numberOfQuestions")

        let center = CGPoint(x:bounds.width/2, y: bounds.height/2)
        let radius: CGFloat = max(bounds.width, bounds.height)
        let arcWidth: CGFloat = 15
        let startAngle: CGFloat = 3 * π / 4
        let endAngle: CGFloat = π / 4
        
        /// prepare outline path

        let path = UIBezierPath(arcCenter: center,
                                radius: radius/2 - arcWidth/2,
                                startAngle: startAngle,
                                endAngle: endAngle,
                                clockwise: true)
        path.lineWidth = arcWidth
        counterColor.setStroke()
        path.stroke()
        
        /// Draw the progress path
        
        let angleDifference: CGFloat = 2 * π - startAngle + endAngle
        let arcLengthforQuestion = angleDifference / CGFloat(numberOfQuestions)
        let outlineEndAngle = arcLengthforQuestion * CGFloat(counter) + startAngle
        
        /// Draw the outer arc of progress path
        let outlinePath = UIBezierPath(arcCenter: center,
                                       radius: bounds.width/2 - 2.5,
                                       startAngle: startAngle,
                                       endAngle: outlineEndAngle,
                                       clockwise: true)
        
        /// Draw the inner arc of progress path
        outlinePath.addArc(withCenter: center,
                                     radius: bounds.width/2 - arcWidth + 2.5,
                                     startAngle: outlineEndAngle,
                                     endAngle: startAngle,
                                     clockwise: false)
        
        /// Close progress path
        outlinePath.close()
        Color.green.setFill()
        outlineColor.setStroke()
        outlinePath.lineWidth = 5.0
        outlinePath.stroke()
        outlinePath.fill()
        
    }
}
