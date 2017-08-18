//
//  IceSheet.swift
//  Miki's Igloo
//
//  Created by Karthik Vasudevan on 18/08/2017.
//  Copyright © 2017 Karthik Vasudevan. All rights reserved.
//

import Foundation
import SpriteKit

class IceSheetFactory {
    var iceSheet: SKSpriteNode;
    var wave: SKSpriteNode;
    init?(index: CGFloat) {
        let bgTexture = SKTexture(imageNamed: "IceSheetFull")
        let movebg = SKAction.moveBy(x: -bgTexture.size().width, y: 0, duration: 9 )
        let replacebg = SKAction.moveBy(x: bgTexture.size().width, y: 0, duration: 0)
        let moveForever = SKAction.repeatForever(SKAction.sequence([movebg, replacebg]))
        wave = SKSpriteNode(texture: bgTexture)
        wave.position = CGPoint(x: (bgTexture.size().width * index) + 100, y: 90)
        wave.name = "IceSheet"
        
        wave.run(moveForever)
        self.iceSheet = wave;
    }
    func getIceSheet() -> SKSpriteNode {
        return self.iceSheet;
    }
}
