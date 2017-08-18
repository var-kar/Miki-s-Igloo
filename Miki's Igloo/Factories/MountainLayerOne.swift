//
//  MountainLayerOne.swift
//  Miki's Igloo
//
//  Created by Karthik Vasudevan on 17/08/2017.
//  Copyright © 2017 Karthik Vasudevan. All rights reserved.
//

import Foundation
import SpriteKit

class MountainLayerOneFactory {
    var mountain: SKSpriteNode;
    init?() {
        let backgroundImage = SKSpriteNode(imageNamed: "MountainLayerOne")
        backgroundImage.anchorPoint = CGPoint.init(x: 0, y: 0)
        backgroundImage.position = CGPoint(x:0, y:105)
        backgroundImage.name = "MountainLayerOne"
        
        self.mountain = backgroundImage;
        
    }
    func getMountain() -> SKSpriteNode {
        return self.mountain;
    }
}
