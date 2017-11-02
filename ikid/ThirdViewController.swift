//
//  ThirdViewController.swift
//  ikid
//
//  Created by Jessie Kuo on 01/11/2017.
//  Copyright © 2017 appcat. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var state = true
    
    @IBOutlet weak var goodQ: UILabel!

    @IBAction func switchViews(_ sender: UIButton) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        if state {
            self.goodQ.text = "da cheetah is faster dandelion."
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            state = false
        } else {
            self.goodQ.text = "My teacher ask my Jamaican friend to use the word Dandelion in a sentence..."
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            state = true
        }
        UIView.commitAnimations()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.goodQ.text = "My teacher ask my Jamaican friend to use the word Dandelion in a sentence..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.goodQ.text = "My teacher ask my Jamaican friend to use the word Dandelion in a sentence..."
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
