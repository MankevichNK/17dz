//
//  SecondViewController.swift
//  17dz
//
//  Created by Пользователь on 3/8/20.
//  Copyright © 2020 Пользователь. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let arrayColor:[UIColor] = [.red, .orange, .yellow, .green, .cyan, .blue, .purple, .gray]
    var views: [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var colorRandom: UIColor {
        get {
            let index = Int.random(in: 0..<arrayColor.count)
            return arrayColor[index]
        }
    }
    
    var viewRandom: UIView{
        get {
           let view = UIView()
            view.backgroundColor = colorRandom
            return view
        }
    }
    
    @IBAction func AddViewButton(_ sender: Any) {
        let newView = viewRandom
        self.view.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        if views.isEmpty{
            newView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        } else {
            let lastView = views.last!
            newView.topAnchor.constraint(equalTo: lastView.bottomAnchor, constant: 20).isActive = true
        }
        
        newView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        newView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        newView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        views.append(newView)
}
}


