//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Fouad Adel on 5/4/19.
//  Copyright © 2019 Fouad Adel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var imageView: UIImageView!
    
    var randomBallNumber : Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateBall()
        
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        updateBall()
    }
    
    func updateBall(){
        
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

