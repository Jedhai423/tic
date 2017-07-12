//
//  Game.swift
//  Tic-tac-toe
//
//  Created by Jedhai Pimentel on 11/07/17.
//  Copyright © 2017 Jedhai Pimentel. All rights reserved.
//

import UIKit

class Game: UIViewController {
    var s1 = Spaces(i: 1, j: 1, isOcup: nil)
    let s2 = Spaces(i: 1, j: 2, isOcup: nil)
    let s3 = Spaces(i: 1, j: 3, isOcup: nil)
    let s4 = Spaces(i: 2, j: 1, isOcup: nil)
    let s5 = Spaces(i: 2, j: 2, isOcup: nil)
    let s6 = Spaces(i: 2, j: 3, isOcup: nil)
    let s7 = Spaces(i: 3, j: 1, isOcup: nil)
    let s8 = Spaces(i: 3, j: 2, isOcup: nil)
    let s9 = Spaces(i: 3, j: 3, isOcup: nil)

    @IBOutlet weak var x1: UIImageView!
    @IBOutlet weak var O1: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        x1.alpha = 0
        O1.alpha = 0

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func t1() {
        if s1.isOcup == nil {
            if currentPlayer == Player.X {
                x1.alpha = 1.0
            } else if currentPlayer == Player.O {
                O1.alpha = 1.0
            }
            
            NextMove()
        } else if s1.isOcup == true || s1.isOcup == false {
            // FIXME: erro de que já tem uma peça lá
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
