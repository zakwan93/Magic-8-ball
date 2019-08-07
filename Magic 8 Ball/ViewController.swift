//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Zakwan Bhaiyat on 8/7/19.
//  Copyright © 2019 Zakwan Bhaiyat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

