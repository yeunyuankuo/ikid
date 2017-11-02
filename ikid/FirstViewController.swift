//
//  FirstViewController.swift
//  ikid
//
//  Created by Jessie Kuo on 01/11/2017.
//  Copyright © 2017 appcat. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var state = true
    
    @IBOutlet weak var punQ: UILabel!
    
    @IBAction func switchViews(_ sender: UIButton) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        if state {
            self.punQ.text = "Oh sheet."
             UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            state = false
        } else {
            self.punQ.text = "What does the blanket say when it fell off the bed?"
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            state = true
        }
        UIView.commitAnimations()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //self.punQ.text = "What does the blanket say when it fell off the bed?"
    }

}

