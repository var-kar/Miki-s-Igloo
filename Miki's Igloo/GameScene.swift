//
//  GameScene.swift
//  Miki's Igloo
//
//  Created by Karthik Vasudevan on 11/08/2017.
//  Copyright © 2017 Karthik Vasudevan. All rights reserved.
//

import SpriteKit
import GameplayKit
let mikiCategory:UInt32 = 0x1 << 0
let groundCategory:UInt32 = 0x1 << 1

class GameScene: SKScene, SKPhysicsContactDelegate {
    var miki: SKSpriteNode = MikiFactory()!.getMiki()
    var groundLine: SKSpriteNode = GroundLineFactory()!.getGroundLine()
    override func sceneDidLoad() {
        self.physicsWorld.gravity = CGVector(dx: 0.0, dy: -5.0 )
        self.physicsWorld.contactDelegate = self
        
        self.addChild(BackgroundFactory()!.getBackground())
        self.addChild(MountainLayerOneFactory()!.getMountain())
        
        for i in 0..<2 {
            self.addChild(MountainLayerTwoFactory(index: CGFloat(i))!.getMountain())
        }
        for i in 0..<2 {
            let iceSheet: SKSpriteNode = IceSheetFactory(index: CGFloat(i))!.getIceSheet();
            self.addChild(iceSheet)
        }
        self.addChild(WaterFactory()!.getWater())
        self.addChild(miki)
        self.addChild(groundLine)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("I am down");
        miki.physicsBody?.usesPreciseCollisionDetection = true;
        miki.physicsBody?.velocity = CGVector(dx: 0, dy: 0)
        miki.physicsBody?.applyImpulse(CGVector(dx: 0, dy: 40))
        miki.physicsBody?.affectedByGravity = true;
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("I am up now 2 :)");
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Not sure what I am");
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
       print(contact)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
    }
}
