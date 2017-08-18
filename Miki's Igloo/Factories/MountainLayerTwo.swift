//
//  MountainLayerTwo.swift
//  Miki's Igloo
//
//  Created by Karthik Vasudevan on 17/08/2017.
//  Copyright © 2017 Karthik Vasudevan. All rights reserved.
//

import Foundation
import SpriteKit

class MountainLayerTwoFactory {
    var mountain: SKSpriteNode;
    var wave: SKSpriteNode;
    init?(index: CGFloat) {
        let bgTexture = SKTexture(imageNamed: "MountainLayerTwo")
        let movebg = SKAction.moveBy(x: -bgTexture.size().width, y: 0, duration: 70 )
        let replacebg = SKAction.moveBy(x: bgTexture.size().width, y: 0, duration: 0)
        let moveForever = SKAction.repeatForever(SKAction.sequence([movebg, replacebg]))
        wave = SKSpriteNode(texture: bgTexture)
        wave.position = CGPoint(x: (bgTexture.size().width * index) + 100, y: 200)
        wave.run(moveForever)
        self.mountain = wave;
    }
    func getMountain() -> SKSpriteNode {
        return self.mountain;
    }
}
