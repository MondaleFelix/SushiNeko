//
//  SushiPiece.swift
//  SushiNeko
//
//  Created by Mondale on 11/13/19.
//  Copyright © 2019 Mondale. All rights reserved.
//

import SpriteKit

class SushiPiece: SKSpriteNode {

    /* Chopsticks objects */
    var rightChopstick: SKSpriteNode!
    var leftChopstick: SKSpriteNode!

    var side: Side = .none {
        didSet {
            switch side {
            case .left:
                /* Show left chopstick */
                leftChopstick.isHidden = false
            case .right:
                /* Show right chopstick */
                rightChopstick.isHidden = false
            case .none:
                /* Hide all chopsticks */
                leftChopstick.isHidden = true
                rightChopstick.isHidden = true
            }
        }
    }
    
    /* You are required to implement this for your subclass to work */
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }

    /* You are required to implement this for your subclass to work */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func connectChopsticks() {
        /* Connect our child chopstick nodes */
        rightChopstick = childNode(withName: "rightChopstick") as! SKSpriteNode
        leftChopstick = childNode(withName: "leftChopstick") as! SKSpriteNode
        side = .none
    }
}
