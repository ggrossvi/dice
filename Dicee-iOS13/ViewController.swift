//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        //WHO           WHAT    VALUE
//        //diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
//        //diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
//
//    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped")
        
        let diceArray = [UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
        
        
        let leftDiceNumber = Int.random(in: 0...5)
        let rightDiceNumber = Int.random(in: 0...5)        
        //diceImageView1.image = diceArray[leftDiceNumber]
        
        
        // randomElement returns an optional
        if let randomDiceElement = diceArray.randomElement() {
            diceImageView1.image = randomDiceElement
        }
        
        
        diceImageView2.image = diceArray[rightDiceNumber]
        
        //??? diceImageView2.image = diceArray.randomElement()
       
        print("leftDiceNumber at beginning = \(leftDiceNumber)")
        
        
    }
}

