//
//  SecondViewController.swift
//  ikid
//
//  Created by Jessie Kuo on 01/11/2017.
//  Copyright © 2017 appcat. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var state = true
    
    @IBOutlet weak var dadQ: UILabel!

    @IBAction func switchViews(_ sender: UIButton) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        if state {
            self.dadQ.text = "No, just leave it in the carton."
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            state = false
        } else {
            self.dadQ.text = "Whenever the cashier at the grocery store asks my dad if he would like the milk in the bag?  He said..."
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            state = true
        }
        UIView.commitAnimations()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dadQ.text = "Whenever the cashier at the grocery store asks my dad if he would like the milk in the bag?  He said..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.dadQ.text = "Whenever the cashier at the grocery store asks my dad if he would like the milk in the bag?  He said..."
    }

}

