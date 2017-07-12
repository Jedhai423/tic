//
//  TicTacToe.swift
//  Tic-tac-toe
//
//  Created by Jedhai Pimentel on 11/07/17.
//  Copyright © 2017 Jedhai Pimentel. All rights reserved.
//

var currentPlayer = Player.X


struct Spaces {
    let i: Int
    let j: Int
    var isOcup: Bool? = nil
}

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

enum Player {
    case X
    case O
}


func NextMove() {
    if currentPlayer == Player.X {
        currentPlayer = Player.O
    } else if currentPlayer == Player.O {
        currentPlayer = Player.X
    } else {
        fatalError()
    }
}

func IsWinner() {
    
}

func PlaceTile(location: Int) {
    
}

















































