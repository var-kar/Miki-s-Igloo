//
//  GameViewController.swift
//  Miki's Igloo
//
//  Created by Karthik Vasudevan on 11/08/2017.
//  Copyright © 2017 Karthik Vasudevan. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    override func loadView() {
        self.view = SKView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello worl")
        
        let scene = GameScene(size: view.bounds.size)
        let skView = view as! SKView
        skView.showsFPS = false
        skView.showsNodeCount = false
        skView.ignoresSiblingOrder = false
        scene.scaleMode = .resizeFill
        skView.presentScene(scene)
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
