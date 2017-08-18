//
//  GroundLine.swift
//  Miki's Igloo
//
//  Created by Karthik Vasudevan on 18/08/2017.
//  Copyright © 2017 Karthik Vasudevan. All rights reserved.
//

import Foundation
import SpriteKit

class GroundLineFactory {
    var background: SKSpriteNode;
    init?() {
        let backgroundImage = SKSpriteNode(imageNamed: "GroundLine")
        backgroundImage.anchorPoint = CGPoint.init(x: 0, y: 0)
        backgroundImage.position = CGPoint(x:0, y:90)
        backgroundImage.name = "GroundLine"
        
        backgroundImage.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: backgroundImage.size.width, height: 1))
        backgroundImage.physicsBody?.linearDamping = 1
        backgroundImage.physicsBody?.restitution = 0
        backgroundImage.physicsBody?.affectedByGravity = false
        backgroundImage.physicsBody?.isDynamic = false
        backgroundImage.physicsBody?.categoryBitMask = groundCategory
        backgroundImage.physicsBody?.collisionBitMask = mikiCategory
        backgroundImage.physicsBody?.contactTestBitMask = mikiCategory
        self.background = backgroundImage;
        
    }
    func getGroundLine() -> SKSpriteNode {
        return self.background;
    }
}
