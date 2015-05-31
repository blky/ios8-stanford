//
//  HappinessViewController.swift
//  SmilyFace
//
//  Created by Cindy Zheng on 5/15/15.
//  Copyright (c) 2015 Cindy Z. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController , FaceViewDataSource {

    var happiness : Int = 15{
        
        didSet {
            happiness = min(max(happiness,0),100)
            println ("happiness i= \(happiness)")
            updateUI()
        
        }
        
    }
    
    //best place to add data source for an outlet
    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.dataSource = self
        }
    }
    
    
    func updateUI (){
        faceView.setNeedsDisplay()
    }
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness - 50)/50
    }
    
}
