//
//  Game.swift
//  Bullseye
//
//  Created by Ana Carolina Martins Pessoa on 17/04/22.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    
    func points(sliderValue: Int) -> Int {
        100 - abs(sliderValue - target)
    }
}
