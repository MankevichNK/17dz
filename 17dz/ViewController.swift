//
//  ViewController.swift
//  17dz
//
//  Created by Пользователь on 3/8/20.
//  Copyright © 2020 Пользователь. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer: Timer?
    var number: Int = 0
    
    @IBOutlet weak var labelNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        number = 0
    }
    @IBAction func buttonStart(_ sender: Any) {
        guard timer == nil else { return  }
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(keepTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func stopButton(_ sender: Any) {
        timer?.invalidate()
        timer = nil
    }
    
    @IBAction func restartButton(_ sender: Any) {
        timer?.invalidate()
        timer = nil
        number = 0
        labelNumber.text = "0"
    }
    
    @objc func keepTimer()  {
        number += 1
        labelNumber.text = String(number)
    }
    
}

