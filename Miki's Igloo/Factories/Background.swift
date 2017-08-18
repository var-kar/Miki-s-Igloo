//
//  Background.swift
//  Miki's Igloo
//
//  Created by Karthik Vasudevan on 17/08/2017.
//  Copyright © 2017 Karthik Vasudevan. All rights reserved.
//

import Foundation
import SpriteKit

class BackgroundFactory {
    var background: SKSpriteNode;
    init?() {
        let backgroundImage = SKSpriteNode(imageNamed: "Background")
        backgroundImage.anchorPoint = CGPoint.init(x: 0, y: 0)
        backgroundImage.position = CGPoint(x:0, y:0)
        backgroundImage.name = "Background"

        self.background = backgroundImage;
        
    }
    func getBackground() -> SKSpriteNode {
        return self.background;
    }
}
