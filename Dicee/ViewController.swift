//
//  ViewController.swift
//  Dicee
//
//  Created by Zhang on 7/4/18.
//  Copyright © 2018 Bowen Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    // Create random numbers for rolling the dice.
    var diceRandomIndex1 : Int = 0
    var diceRandomIndex2 : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rollRandomDices()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        rollRandomDices()
    }
    
    // Function to roll two random
    func rollRandomDices(){
        diceRandomIndex1 = Int(arc4random_uniform(6))
        diceRandomIndex2 = Int(arc4random_uniform(6))
        print("Dice 1: \(diceRandomIndex1 + 1)   " + "Dice 2: \(diceRandomIndex2 + 1)")
        
        diceImageView1.image = UIImage(named: diceArray[diceRandomIndex1])
        diceImageView2.image = UIImage(named: diceArray[diceRandomIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollRandomDices()
    }
    
}

