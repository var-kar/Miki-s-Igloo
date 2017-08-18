//
//  File.swift
//  Miki's Igloo
//
//  Created by Karthik Vasudevan on 18/08/2017.
//  Copyright © 2017 Karthik Vasudevan. All rights reserved.
//

import Foundation
import SpriteKit

class MikiFactory {
    var background: SKSpriteNode;
    init?() {
        let backgroundImage = SKSpriteNode(imageNamed: "Miki")
        backgroundImage.anchorPoint = CGPoint.init(x: 0, y: 0)
        backgroundImage.position = CGPoint(x:100, y:112)
        backgroundImage.name = "Miki"
        
        backgroundImage.physicsBody = SKPhysicsBody(circleOfRadius: backgroundImage.size.width / 2)
        backgroundImage.physicsBody?.linearDamping = 3
        backgroundImage.physicsBody?.restitution = 0
        backgroundImage.physicsBody?.affectedByGravity = false
        backgroundImage.physicsBody?.isDynamic = true
        backgroundImage.physicsBody?.categoryBitMask = mikiCategory
        backgroundImage.physicsBody?.collisionBitMask = groundCategory
        backgroundImage.physicsBody?.contactTestBitMask = groundCategory
        self.background = backgroundImage;
        
    }
    func getMiki() -> SKSpriteNode {
        return self.background;
    }
}
