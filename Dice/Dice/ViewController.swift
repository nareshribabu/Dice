//
//  ViewController.swift
//  Dice
//  Created by Nareshri Babu on 18/04/2020.
//  Concept by London App Brewery
//  Copyright © 2020 Nareshri Babu. All rights reserved.
//  This app was created for learning purposes.
//  All images were only used for learning purposes and do not belong to me.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet allows me to reference an UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    //interface builder action (IBACTION)
    //when the button is pressed
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        //create a constant array with all the dice image literals
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        //randomizes the dice images and outputs a random element from the array
        /*
         * can also write as diceImageView1.image = diceArray[Int.random(in: 0...5)]
         * to randomize it
         * random element gives you a random element within the range of the array
         */
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
    }
    
}

