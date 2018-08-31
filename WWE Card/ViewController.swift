//
//  ViewController.swift
//  WWE Card
//
//  Created by Arjun Gurung on 7/14/17.
//  Copyright © 2017 Arjun Gurung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cardNames = ["card1","card2","card3","card4","card5","card6","card7","card8","card9","card10","card11","card12","card13","card14","card15"]
    
    var counter = 1

    @IBOutlet weak var leftCardImageView: UIImageView!
    @IBOutlet weak var rightCardImageView: UIImageView!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    var rightScore = 0
    var leftScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var leftNumber:Int = 0
    var rightNumber:Int = 0
    
    @IBAction func leftButtonTapped(_ sender: UIButton) {
    
        
        leftNumber = Int(arc4random_uniform(14) + 1)
    
        leftCardImageView.image = UIImage(named: cardNames[leftNumber])
        
        if leftNumber == rightNumber {
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        }
    }
    
    
    
    @IBAction func rightButtonTapped(_ sender: UIButton) {
    
    
        rightNumber = Int(arc4random_uniform(14) + 1)
        
        rightCardImageView.image = UIImage(named: cardNames[rightNumber])
        
        if rightNumber == leftNumber {
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
        }
    }
    
    
}

