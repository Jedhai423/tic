//
//  Game.swift
//  Tic-tac-toe
//
//  Created by Jedhai Pimentel on 11/07/17.
//  Copyright © 2017 Jedhai Pimentel. All rights reserved.
//

import UIKit

var currentPlayer = Player.X
var isDraw = false
var esp: [Spaces] = [
    Spaces(i: 1, j: 1, isOcup: nil),
    Spaces(i: 1, j: 2, isOcup: nil),
    Spaces(i: 1, j: 3, isOcup: nil),
    Spaces(i: 2, j: 1, isOcup: nil),
    Spaces(i: 2, j: 2, isOcup: nil),
    Spaces(i: 2, j: 3, isOcup: nil),
    Spaces(i: 3, j: 1, isOcup: nil),
    Spaces(i: 3, j: 2, isOcup: nil),
    Spaces(i: 3, j: 3, isOcup: nil)
]

struct Spaces {
    let i: Int
    let j: Int
    var isOcup: Bool?
}

enum Player {
    case X
    case O
}

class Game: UIViewController {
    
    

    @IBOutlet weak var x1: UIImageView!
    @IBOutlet weak var O1: UIImageView!
    @IBOutlet weak var x2: UIImageView!
    @IBOutlet weak var O2: UIImageView!
    @IBOutlet weak var x3: UIImageView!
    @IBOutlet weak var O3: UIImageView!
    @IBOutlet weak var x4: UIImageView!
    @IBOutlet weak var O4: UIImageView!
    @IBOutlet weak var x5: UIImageView!
    @IBOutlet weak var O5: UIImageView!
    @IBOutlet weak var x6: UIImageView!
    @IBOutlet weak var O6: UIImageView!
    @IBOutlet weak var x7: UIImageView!
    @IBOutlet weak var O7: UIImageView!
    @IBOutlet weak var x8: UIImageView!
    @IBOutlet weak var O8: UIImageView!
    @IBOutlet weak var x9: UIImageView!
    @IBOutlet weak var O9: UIImageView!
    @IBOutlet weak var NMove: UIImageView!
    @IBOutlet weak var PLayerX: UIImageView!
    @IBOutlet weak var X: UIImageView!
    @IBOutlet weak var PlayerO: UIImageView!
    @IBOutlet weak var O: UIImageView!
    
    func PlaceTile(location: Int) {
        if esp[location].isOcup == nil {
            if currentPlayer == Player.X {
                esp[location].isOcup = true
                IsWinner(location: location)
                NextMove()
                switch location {
                case 0: x1.alpha = 1
                case 1: x2.alpha = 1
                case 2: x3.alpha = 1
                case 3: x4.alpha = 1
                case 4: x5.alpha = 1
                case 5: x6.alpha = 1
                case 6: x7.alpha = 1
                case 7: x8.alpha = 1
                case 8: x9.alpha = 1
                default: fatalError()
                    
                }
            } else if currentPlayer == Player.O {
                esp[location].isOcup = false
                IsWinner(location: location)
                NextMove()
                switch location {
                case 0: O1.alpha = 1
                case 1: O2.alpha = 1
                case 2: O3.alpha = 1
                case 3: O4.alpha = 1
                case 4: O5.alpha = 1
                case 5: O6.alpha = 1
                case 6: O7.alpha = 1
                case 7: O8.alpha = 1
                case 8: O9.alpha = 1
                default: fatalError()
                    
                }
                
            } else {
                fatalError()
            }
        } else if esp[location].isOcup != nil {
            showToast(message: "Space occupied! Choose another one!")
        }

    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        Zeroer()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func t1() {PlaceTile(location: 0)}
    @IBAction func t2() {PlaceTile(location: 1)}
    @IBAction func t3() {PlaceTile(location: 2)}
    @IBAction func t4() {PlaceTile(location: 3)}
    @IBAction func t5() {PlaceTile(location: 4)}
    @IBAction func t6() {PlaceTile(location: 5)}
    @IBAction func t7() {PlaceTile(location: 6)}
    @IBAction func t8() {PlaceTile(location: 7)}
    @IBAction func t9() {PlaceTile(location: 8)}
    
    
    func Zeroer() {
        currentPlayer = Player.X
        x1.alpha = 0; O1.alpha = 0; x2.alpha = 0; O2.alpha = 0; x3.alpha = 0; O3.alpha = 0; x4.alpha = 0; O4.alpha = 0; x5.alpha = 0; O5.alpha = 0; x6.alpha = 0; O6.alpha = 0; x7.alpha = 0; O7.alpha = 0; x8.alpha = 0; O8.alpha = 0; x9.alpha = 0; O9.alpha = 0; PlayerO.alpha = 0; O.alpha = 0; PLayerX.alpha = 1; X.alpha = 1;
    }
    
    func NextMove() {
        if currentPlayer == Player.X {
            currentPlayer = Player.O
            PLayerX.alpha = 0; X.alpha = 0; PlayerO.alpha = 1; O.alpha = 1
        } else if currentPlayer == Player.O {
            currentPlayer = Player.X
            PLayerX.alpha = 1; X.alpha = 1; PlayerO.alpha = 0; O.alpha = 0
        } else {
            fatalError()
        }
    }
    
    func IsWinner(location: Int) {
        if currentPlayer == Player.X {
            let i = esp[location].i
            let j = esp[location].j
            switch i {
            case 1:
                if esp[0].isOcup == true && esp[1].isOcup == true && esp[2].isOcup == true {
                    // Winner
                    GameOver()
                    
                } else {
                    break
                }
            case 2:
                if esp[3].isOcup == true && esp[4].isOcup == true && esp[5].isOcup == true {
                    // Winner
                    GameOver()
                } else {
                    break
                }
            case 3:
                if esp[6].isOcup == true && esp[7].isOcup == true && esp[8].isOcup == true {
                    // Winner
                    GameOver()
                    
                } else {
                    break
                }
            default:
                break
            }
            
            switch j {
            case 1:
                if esp[0].isOcup == true && esp[3].isOcup == true && esp[6].isOcup == true {
                    // Winner
                    GameOver()
                } else {
                    break
                }
            case 2:
                if esp[1].isOcup == true && esp[4].isOcup == true && esp[7].isOcup == true {
                    // Winner
                    GameOver()
                } else {
                    break
                }
            case 3:
                if esp[2].isOcup == true && esp[5].isOcup == true && esp[8].isOcup == true {
                    // Winner
                    GameOver()
                } else {
                    break
                }
            default:
                break
            }
            if esp[0].isOcup == true && esp[4].isOcup == true && esp[8].isOcup == true || esp[2].isOcup == true && esp[4].isOcup == true && esp[6].isOcup == true {
                GameOver()
            }
            
        } else if esp[0].isOcup != nil && esp[1].isOcup != nil && esp[2].isOcup != nil && esp[3].isOcup != nil && esp[4].isOcup != nil && esp[5].isOcup != nil && esp[6].isOcup != nil && esp[7].isOcup != nil && esp[8].isOcup != nil {
            isDraw = true
            GameOver()
        }
        if currentPlayer == Player.O {
            let i = esp[location].i
            let j = esp[location].j
            switch i {
            case 1:
                if esp[0].isOcup == false && esp[1].isOcup == false && esp[2].isOcup == false {
                    // Winner
                    GameOver()
                    
                } else {
                    break
                }
            case 2:
                if esp[3].isOcup == false && esp[4].isOcup == false && esp[5].isOcup == false {
                    // Winner
                    GameOver()
                } else {
                    break
                }
            case 3:
                if esp[6].isOcup == false && esp[7].isOcup == false && esp[8].isOcup == false {
                    // Winner
                    GameOver()
                    
                } else {
                    break
                }
            default:
                break
            }
            
            switch j {
            case 1:
                if esp[0].isOcup == false && esp[3].isOcup == false && esp[6].isOcup == false {
                    // Winner
                    GameOver()
                } else {
                    break
                }
            case 2:
                if esp[1].isOcup == false && esp[4].isOcup == false && esp[7].isOcup == false {
                    // Winner
                    GameOver()
                } else {
                    break
                }
            case 3:
                if esp[2].isOcup == false && esp[5].isOcup == false && esp[8].isOcup == false {
                    // Winner
                    GameOver()
                } else {
                    break
                }
            default:
                break
            }
            
        }
        if esp[0].isOcup == false && esp[4].isOcup == false && esp[8].isOcup == false || esp[2].isOcup == false && esp[4].isOcup == false && esp[6].isOcup == false {
            GameOver()
        } else if esp[0].isOcup != nil && esp[1].isOcup != nil && esp[2].isOcup != nil && esp[3].isOcup != nil && esp[4].isOcup != nil && esp[5].isOcup != nil && esp[6].isOcup != nil && esp[7].isOcup != nil && esp[8].isOcup != nil {
            isDraw = true
            GameOver()
        }
        
    }

    
    func GameOver() {

        self.performSegue(withIdentifier: "Winswins", sender: nil)
        

    }
    


    
}
extension UIViewController {
    
    func showToast(message : String) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 180, y: self.view.frame.size.height-160, width: 360, height: 35))
        toastLabel.backgroundColor = UIColor.red.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 12.0)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    } }




