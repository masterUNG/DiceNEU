//
//  ViewController.swift
//  Dice
//
//  Created by MacPro on 5/31/2558 BE.
//  Copyright (c) 2558 EWTC Institute. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var intDice:Int = 1
    
    
    @IBOutlet weak var diceImageView: UIImageView!
    
    @IBAction func backButton(sender: AnyObject) {
        
        if (intDice == 1){
            intDice = 6
        }
        else {
            intDice -= 1
        }
        changeDice(intDice)
        
    }
    
    @IBAction func randomButton(sender: AnyObject) {
        
        intDice = Int(arc4random_uniform(6)) + 1
        
        changeDice(intDice)
        
    }
    
    @IBAction func nextButton(sender: AnyObject) {
        
        if (intDice == 6){
            intDice = 1
        }
        else {
            intDice += 1
        }
        changeDice(intDice)
    }
    
    //Change Dice
    func changeDice(arg1:Int)->Void{
    
        switch arg1 {
        
        case 1:
            diceImageView.image = UIImage(named: "dice1.png")
             break
        case 2:
            diceImageView.image = UIImage(named: "dice2.png")
            break
        case 3:
            diceImageView.image = UIImage(named: "dice3.png")
            break
        case 4:
            diceImageView.image = UIImage(named: "dice4.png")
            break
        case 5:
            diceImageView.image = UIImage(named: "dice5.png")
            break
        case 6:
            diceImageView.image = UIImage(named: "dice6.png")
            break
        default:
            break
        
        }
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}   // Main Class

