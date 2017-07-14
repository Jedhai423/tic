//
//  WinnerViewController.swift
//  Tic-tac-toe
//
//  Created by Jedhai Pimentel on 12/07/17.
//  Copyright © 2017 Jedhai Pimentel. All rights reserved.
//

import UIKit

class WinnerViewController: UIViewController {

    @IBOutlet weak var PlayerO: UIImageView!
    @IBOutlet weak var O: UIImageView!
    @IBOutlet weak var WinsO: UIImageView!
    @IBOutlet weak var PlayerX: UIImageView!
    @IBOutlet weak var X: UIImageView!
    @IBOutlet weak var WinsX: UIImageView!
    
    func WhoWon() {
        if currentPlayer == Player.X {
            PlayerX.alpha = 1; X.alpha = 1; WinsX.alpha = 1
        } else if currentPlayer == Player.O {
            PlayerO.alpha = 1; O.alpha = 1; WinsO.alpha = 1
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PlayerO.alpha = 0; O.alpha = 0; WinsO.alpha = 0; PlayerX.alpha = 0; X.alpha = 0; WinsX.alpha = 0
        WhoWon()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Dismiss(_ sender: Any) {
        let parentVC = self.presentingViewController as? Game
        parentVC?.Zeroer()
        
        dismiss(animated: true, completion: nil)
        for count in 0...8 {
            esp[count].isOcup = nil
            
    }
    
       
    }
    }

