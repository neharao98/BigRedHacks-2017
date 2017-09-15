//
//  ViewController.swift
//  Mockup
//
//  Created by Jeffrey Wong on 9/13/17.
//  Copyright © 2017 Jeffrey Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.giveBackground()
        titleLabel.font = UIFont.boldSystemFont(ofSize: 26.0)
    }
    
    
    func giveBackground() {
        let backgroundImage = UIImage(named: "images.jpg")
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = backgroundImage
        //imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

