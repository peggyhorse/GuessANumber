//
//  ViewController.swift
//  GuessANumber
//
//  Created by Peggy on 2016/4/19.
//  Copyright © 2016年 Peggy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aGuessedNumber: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    
    var clickButoonTimes = 0
    let correctNumber = 25

    @IBAction func guessButoon(sender: UIButton) {
        
        
        if let agn = aGuessedNumber.text {
            
            if let doubleAgt = Int(agn) {
                
                if doubleAgt == correctNumber && clickButoonTimes <= 5

                {
                    answer.text = "you are right"
                    
                }else if clickButoonTimes <= 5{
                    answer.text = "you are wrong"
                    clickButoonTimes += 1
                }else {
                    answer.text = "over 5 times"
                    sender.enabled = false
                }
                
            }else {
                
                answer.text = "fail"
            }
            
            
        }
    }
    
}

