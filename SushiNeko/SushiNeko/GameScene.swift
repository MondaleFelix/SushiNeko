//
//  GameScene.swift
//  SushiNeko
//
//  Created by Mondale on 11/13/19.
//  Copyright © 2019 Mondale. All rights reserved.
//
import SpriteKit

enum Side {
    case left, right, none
}

class GameScene: SKScene {
    var sushiBasePiece: SushiPiece!
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        sushiBasePiece = childNode(withName: "sushiBasePiece") as! SushiPiece

        sushiBasePiece.connectChopsticks()

    }

}

